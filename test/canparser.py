#!/usr/bin/env python3
import json
import sys
import itertools
import pandas as pd


def parse_line(line):
    try:
        timestamp, interface, msg = line.split()
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
        print(f"Warning: fail to parse line: {line}. Ignoring...")
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

def process_file(filename: str, verbose=False):
    schema = load_can_ids('can_ids.json', verbose)
    
    parsed_dataset = []
    
    try: 
        with open(filename) as candump_file:
            for line_number, line in enumerate(candump_file):
                parsed = parse_line(line)
                if (parsed == None):
                    continue
                
                parsed_timestamp = parsed['timestamp']
                parsed_signature = parsed['payload'][0]
                parsed_payload = parsed['payload'][1:]
                parsed_topic_id = parsed['topic_id']
                
                module = find_module(schema, parsed_signature)
                if (module == None):
                    continue
                parsed_module_name = module['name']
#                 parsed_module_description = module['description']
                
                topic = find_topic(module, parsed_topic_id)
                if (topic == None):
                    continue
                parsed_topic_name = topic['name']
#                 parsed_topic_description = topic['description']
                
                parsed_data_dict_list = interpret_payload(topic, parsed_payload)
                
                for parsed_data_dict in parsed_data_dict_list:
                    parsed_dict = {
                        "timestamp": parsed_timestamp,
                        "module_name": parsed_module_name,
                        "topic_name": parsed_topic_name,
                        "byte_name": parsed_data_dict['byte_name'],
                        "data": parsed_data_dict['data'],
                        "unit": parsed_data_dict['unit']
                    }
                    parsed_dataset += [parsed_dict]
                
    except Exception as e:
        sys.stderr.write('Failed loading log file: %s\n' % (str(e)))
        sys.exit(1)

    output_filename = filename + '.csv'
    print('Writing to:', output_filename)
    df = pd.DataFrame(parsed_dataset)
    df.to_csv(output_filename, index=False)
    print(df.tail())

if __name__ == '__main__':
    process_file('test_small.log')
