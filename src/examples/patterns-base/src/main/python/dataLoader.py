import csv
import sys
from enum import Enum


class HeaderFields(Enum):
    ALLEGIANCE = 'allegiance'
    HOME_WORLD = 'homeworld'
    SPECIES = 'species'
    NAME = 'name'


def process_file(file_to_process):
    with open(file_to_process, newline='') as file:

        print('|', ' | '.join([field.value for field in HeaderFields]), end=' |\n', file=sys.stdout, flush=False)
        print('|', ' | '.join(['---' for _ in HeaderFields]), end=' |\n', file=sys.stdout, flush=False)
        data = csv.DictReader(file)
        for i, row in enumerate(data):
            output = []
            for field in HeaderFields:
                if field.value not in row:
                    print('Error: Missing field [', field.value, '] in input file at line: ', i + 1)
                    sys.exit(1)
                output.append(row[field.value])
            print('|', ' | '.join(output), end='|\n', file=sys.stdout, flush=False)


def validate_file(file_to_check):
    is_valid = True
    with open(file_to_check, newline='') as file:
        header = next(csv.reader(file))
        for field in HeaderFields:
            if field.value not in header:
                print('Error: Missing field [', field.value, '] in input file [', file_to_check, ']')
                is_valid = False
    return is_valid


def main():
    if len(sys.argv) < 2:
        print("Usage: python dataLoader.py <filename>")
        sys.exit(1)

    input_file = sys.argv[1]
    is_valid = validate_file(file_to_check=input_file)
    if(not is_valid):
        print('Error: Invalid input file, SKIPPING [', input_file, ']')
    else:
        process_file(file_to_process=input_file)


if __name__ == "__main__":
    main()
