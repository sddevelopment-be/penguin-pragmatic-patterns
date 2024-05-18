import csv
import sys
from enum import Enum


class HeaderFields(Enum):
    ALLEGIANCE = 'allegiance'
    HOME_WORLD = 'homeworld'
    SPECIES = 'species'
    NAME = 'name'


def validate_file(file_to_validate):
    with open(file_to_validate, newline='') as file:
        header_line = file.readline();


def process_file(file_to_process):
    with open(file_to_process, newline='') as file:
        data = csv.DictReader(file)
        for i, row in enumerate(data):
            output = []
            for field in HeaderFields:
                if field.value not in row:
                    print('Error: Missing field [', field.value, '] in input file at line: ', i+1)
                    sys.exit(1)
                output.append(row[field.value])
            print(output, sep=' ', end='\n', file=sys.stdout, flush=False)


def main():
    if len(sys.argv) < 2:
        print("Usage: python dataLoader.py <filename>")
        sys.exit(1)

    input_file = sys.argv[1]
    validate_file(file_to_validate=input_file)
    process_file(file_to_process=input_file)


if __name__ == "__main__":
    main()
