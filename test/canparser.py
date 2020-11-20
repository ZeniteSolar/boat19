#!/usr/bin/env python3
import json
import sys
import glob, os
import itertools
from timeit import default_timer as timer
import pandas

def dbg(obj):
    print(type(obj), '\n', obj)

def parse_row(row):
    try:
        timestamp, interface, msg = row.split()
        timestamp = timestamp.strip('()')
        topic_id, payload = msg.split('#')
        topic_id = int(topic_id, 16)
        payload = [byte for byte in bytearray.fromhex(payload)]
        if len(payload) > 8:
            return None
        return {
            'timestamp': timestamp,
            'interface': interface,
            'topic_id': topic_id,
            'payload': payload
        }
    except:
        print(f"Warning: fail to parse row: {row}. Ignoring...")
        return None

def load_can_ids(filename: str, verbose=False):
    try:
        with open(filename) as schema_file:
            schema = json.load(schema_file)

            if(verbose):
                print(f'Loaded {len(schema["modules"])} modules:')
                for i, _ in enumerate(schema['modules']):
                    print(
                        f'\t{schema["modules"][i]["name"]}({schema["modules"][i]["signature"]})')
                print('')

            return schema
    except Exception as e:
        sys.stderr.write('Failed loading CAN IDS: %s\n' % (str(e)))
        sys.exit(1)

def find_module(schema: list, parsed_signature: bytearray):
    return next((module for module in schema['modules'] if module['signature'] == parsed_signature), None)

def find_topic(module: list, parsed_topic_id: bytearray):
    return next((topic for topic in module['topics'] if topic['id'] == parsed_topic_id), None) 

def interpret_payload(topic, parsed_payload):
    payload_data_list = []

    for b, byte in enumerate(topic['bytes'][1:]):
        if byte != None:
            parsed_byte_type = byte['type']
            parsed_byte_units = byte['units']
            parsed_byte_name = byte['name']

            if parsed_byte_type == 'u8':
                parsed_byte_data = parsed_payload[b]
            elif parsed_byte_type == 'u16':
                if parsed_byte_name[-2:] == '_H':
                    continue
                parsed_byte_name = parsed_byte_name[:-2]
                parsed_byte_data = (parsed_payload[b]) + (parsed_payload[b + 1] * 256)
            elif parsed_byte_type == 'bitfield':
                for parsed_bit, parsed_bit_name in enumerate(byte['bits']):
                    if parsed_bit_name != None:
                        parsed_byte_data = (parsed_payload[b] >> parsed_bit) & 1

                        parsed_dict = {
                            "byte_name": parsed_byte_name + parsed_bit_name,
                            "data": parsed_byte_data,
                            "unit": ''
                        }
                        payload_data_list += [parsed_dict]
                continue
            else:
                print("FAIL!")
                print(topic)
                print(parsed_payload)
                continue

            if parsed_byte_units == '%':
                parsed_byte_scale = 1 / 255
                parsed_byte_data *= parsed_byte_scale
            else:
                if parsed_byte_units != '':
                    parsed_byte_units = ["".join(x) for _, x in itertools.groupby(
                        parsed_byte_units, key=str.isdigit)]
                    parsed_byte_scale = 1 / \
                        float(
                            parsed_byte_units[1])
                    parsed_byte_units = parsed_byte_units[0].replace(
                        '/', '')
                    parsed_byte_data *= parsed_byte_scale

            parsed_dict = {
                "byte_name": parsed_byte_name,
                "data": parsed_byte_data,
                "unit": parsed_byte_units
            }
            payload_data_list += [parsed_dict]

    return payload_data_list

def process_row(row):
    parsed = parse_row(row)
    parsed_dataset = []
    if (parsed == None):
        return None

    parsed_timestamp = parsed['timestamp']
    parsed_signature = parsed['payload'][0]
    parsed_payload = parsed['payload'][1:]
    parsed_topic_id = parsed['topic_id']

    module = find_module(schema, parsed_signature)
    if (module == None):
        return None
    parsed_module_name = module['name']
#     parsed_module_description = module['description']

    topic = find_topic(module, parsed_topic_id)
    if (topic == None):
        return None
    parsed_topic_name = topic['name']
#     parsed_topic_description = topic['description']

    parsed_data_dict_list = interpret_payload(topic, parsed_payload)

    timestamp_list = []
    module_name_list = []
    topic_name_list = []
    byte_name_list = []
    data_list = []
    unit_list = []

    for parsed_data_dict in parsed_data_dict_list:
        timestamp_list += [parsed_timestamp]
        module_name_list += [parsed_module_name]
        topic_name_list += [parsed_topic_name]
        byte_name_list += [parsed_data_dict['byte_name']]
        data_list += [parsed_data_dict['data']]
        unit_list += [parsed_data_dict['unit']]

    parsed_dict = {
        "timestamp": timestamp_list,
        "module_name": module_name_list,
        "topic_name": topic_name_list,
        "byte_name": byte_name_list,
        "data": data_list,
        "unit": unit_list
    }
    return parsed_dict

def process_file(input_filename: str, verbose=False):
    global schema

    time_start = timer()

    schema = load_can_ids('can_ids.json', verbose)

    chunksize = 10000
    reader = pandas.read_csv(input_filename, names=['log_data'], engine='c', chunksize=chunksize)

    total_input_lines = 0
    total_output_lines = 0

    for c_index, chunk in enumerate(reader):
        chunk_time_start = timer()
        parsed_df_list = []
        for index, row in chunk.iterrows():
            processed_df = process_row(row['log_data'])
            if (processed_df == None):
                continue
            parsed_df_list += [pandas.DataFrame(processed_df)]

        parsed_df = pandas.concat(parsed_df_list)
        output_filename = input_filename + '_chunk_' + str(c_index) + '.hdf5'
        parsed_df.to_hdf(output_filename, 'log')

        chunk_time_end = timer()
        chunk_time_elapsed = chunk_time_end - chunk_time_start
        total_input_lines += len(chunk)
        total_output_lines += len(parsed_df)
        print(f"Chunk {c_index}, elapsed: {chunk_time_elapsed} s, output/input: {total_output_lines}/{total_input_lines} lines")

    time_end = timer()
    time_elapsed = time_end - time_start

    return {
        'Input File Name': input_filename,
        'Output File Name': output_filename,
        'Elapsed time': time_elapsed,
        'Input lines': total_input_lines,
        'Output lines': total_output_lines
    }

def process_dataset(dataset_path: str, filename_prefix: str):
    input_filename_glob = dataset_path + '/' + filename_prefix + '.log'

    input_file_list = glob.glob(input_filename_glob)

    for input_filename in input_file_list:
        print('Processing file:', input_filename)
        report = process_file(input_filename)

        print('Report:')
        print('\tElapsed time:', report['Elapsed time'], 'seconds')
        print('\tConversion rate:', report['Elapsed time'] * 1000 / report['Input lines'], 'ms per line')

if __name__ == '__main__':
    dataset_path = '.'
    filename_prefix = 'test_mid_*'
    process_dataset(dataset_path, filename_prefix)
