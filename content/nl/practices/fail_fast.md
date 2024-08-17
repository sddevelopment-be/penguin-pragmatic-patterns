+++
title = "Fail Fast, Formulate Feedback!"
author = "Stijn Dejongh"
problem = "Invalid input data causing your software to crash midway through its execution is expensive, both in terms of processing power and resolution time."
description = "Avoid wasting resources by not processing data that is known to be invalid. Provide clear feedback on what is wrong with the input data to allow for quick resolution."
categories = [ "software development" ]
tags = [ "structure", "efficiency", "validation" ]
uuid = "336b0448-e78b-4428-83a5-d4d473afda63"
aliases = [ "336b0448-e78b-4428-83a5-d4d473afda63" ]
pubdate = "2024-05-18"
image = "practices/fail_fast_feedback.webp"

[[ammerse]]
name = "agile"
delta = "0"

[[ammerse]]
name = "minimal"
delta = "-0.5"

[[ammerse]]
name = "maintainable"
delta = "1"

[[ammerse]]
name = "environmental"
delta = "1"

[[ammerse]]
name = "reachable"
delta = "0"

[[ammerse]]
name = "solvable"
delta = "1"

[[ammerse]]
name = "extensible"
delta = "0"
+++

## Problem Statement

Invalid input data causing your software to crash midway its through execution is expensive, both in terms of processing power and resolution time.

## Intent

Avoid wasting resources by not processing data that is known to be invalid.
Provide clear feedback on what is wrong with the input data to allow for quick resolution.

## Contextual forces

### Enablers

The following factors support effective application of the practice:

- Processing data is one of the core tasks of software applications
- You have a clear understanding of the expected input data format and structure
- Your software is designed to handle errors gracefully, allowing for a quick recovery from unexpected issues.
- Logging and monitoring infrastructure exists, allowing detailed error information to be captured and analysed
- Your software already has robust input validation mechanisms in place, making it easier to implement comprehensive checks early in the process.

### Deterrents

The following factors prevent effective application of the practice:

- The validation checks are computationally expensive, and introduce unacceptable latency or resource consumption
- Lacking experience or expertise in implementing effective error handling and validation mechanisms
- The input data specifications are unclear or frequently changing
- Lack of established, or adequate, logging infrastructure
- Errors are seldom monitored or acted upon

## Solution

When processing data, validate as much of the input before processing it. In most cases, this means checking whether:

- the input data is present
- the input is of the expected format
- all required fields are present
- the data is within the expected range
- the data is logically consistent
- no duplicates are present

If any of these checks fail, stop the processing and provide feedback on what is wrong with the input data.
This feedback can be as simple as a message to the user, writing a detailed error report to an internal log file, or sending a notification event
to a logging and auditing system.

{{\<tip text=\`
In cases where confidentiality or security is a concern, avoid providing detailed feedback to the user.\
Instead, provide a generic error message to the user, but make sure to write a detailed error log for use by the development team.
Example:

```
 An error occurred while processing your request. 
 We apologize for the inconvenience. Our development team has been notified and will take corrective action. 

 If you want to be notified when the issue is resolved,
 please contact our support team and provide the following reference number: 1234567890
```

\` >}}

## Examples

### Python Data Processing

#### Outline

Say you are writing code to process a data file containing information about characters in a fictional universe.
Your data supplier tells you the file will have the following fields: `allegiance`, `homeworld`, `species`, and `name`.
The goal is to use this input data and convert it to a Markdown table to be used inside a publication of sorts.

You are given the file `star_wars_characters_example.csv` as a reference input file.

```csv
name,height,mass,hair_color,skin_color,eye_color,birth_year,gender,homeworld,species,allegiance
Luke Skywalker,172,77,blond,fair,blue,19BBY,male,Tatooine,Human,Light Side
C-3PO,167,75,NA,gold,yellow,112BBY,NA,Tatooine,Droid,Light Side
R2-D2,96,32,NA,"white, blue",red,33BBY,NA,Naboo,Droid,Light Side
Darth Vader,202,136,none,white,yellow,41.9BBY,male,Tatooine,Human,Dark Side
```

Passing this input file to your script should result in the following Markdown table:

```markdown
| allegiance | homeworld | species | name           |
|------------|-----------|---------|----------------|
| Light Side | Tatooine  | Human   | Luke Skywalker |
| Light Side | Tatooine  | Droid   | C-3PO          |
| Light Side | Naboo     | Droid   | R2-D2          |
| Dark Side  | Tatooine  | Human   | Darth Vader    |
```

You can write a simple Python script that is able to process the file and generate the markdown output table.
The script below reads the input file and processes it line by line, checking if all the required fields are present in the input file.
When a field is missing, the script will print an error message and exit the script.

```python
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


def main():
    if len(sys.argv) < 2:
        print("Usage: python dataLoader.py <filename>")
        sys.exit(1)

    input_file = sys.argv[1]
    process_file(file_to_process=input_file)


if __name__ == "__main__":
    main()
```

#### Problem

Your script works as expected, but when you receive the real data file from the supplier, the output of your code is:

```shell
| allegiance | homeworld | species | name |
|------------|-----------|---------|------|
Error: Missing field [ allegiance ] in input file at line:  1
```

Given the error message, you can see that the `allegiance` field is missing in the input file.
The script stops processing the file and exits, so you have to change your code or data file to match the expected structure.

Imagine you have a large amount of data files with many lines, and you need to check each of them for missing fields.
For this example, the amount of fields is small, but in a real-world scenario, you could have dozens (if not hundreds) of fields to check.
Running the program for each file, checking the output, and making the required change is a tedious proposition.

#### Solution using Fail Fast structure

Rather than processing the file line by line, until we encounter an error, you can read the first line of the file and check if all the required fields are present.

The `main` function is updated to first validate the input file, and then process the file only if the validation is successful.

```python
def main():
    if len(sys.argv) < 2:
        print("Usage: python dataLoader.py <filename>")
        sys.exit(1)

    input_file = sys.argv[1]
    is_valid = validate_file(file_to_check=input_file)
    if not is_valid:
        print('Error: Invalid input file, SKIPPING [', input_file, ']')
    else:
        process_file(file_to_process=input_file)
```

Our new `validate_file` function reads the first line of the file and checks if all the required fields are present.
Furthermore, this new version of the function will give you detailed feedback on which fields are missing in the provided input file.

```python
def validate_file(file_to_check):
    is_valid = True
    with open(file_to_check, newline='') as file:
        header = next(csv.reader(file))
        for field in HeaderFields:
            if field.value not in header:
                print('Error: Missing field [', field.value, '] in input file [', file_to_check, ']')
                is_valid = False
    return is_valid
```

If we run the script with the real data file, the output will be:

```shell
Error: Missing field [ allegiance ] in input file [ star_wars_hair_dressers_database.csv ]
Error: Missing field [ homeworld ] in input file [ star_wars_hair_dressers_database.csv ]
Error: Missing field [ species ] in input file [ star_wars_hair_dressers_database.csv ]
Error: Invalid input file, SKIPPING [ star_wars_hair_dressers_database.csv ]
```

Taking a look at the error message, you can see that the `allegiance`, `homeworld`, and `species` fields are missing in one of the input files.
This is suspicious as the supplier told you that all files would have the same structure. Taking a closer look at the erroneous file, you can see
that the supplier made a mistake, and sent you the data intended for the 'Galactic Hairdressers Data Convention'.

```csv
name,hair_color
Luke Skywalker,blond
C-3PO,NA
R2-D2,NA
Darth Vader,none
```

You can now contact the supplier and ask for the correct file.

{{\<tip text=`Failing fast with full feedback allows you to save valuable system resources and troubleshoot the issue quickly.
In real-world scenarios, you could have hundreds of files to check, and the processing of the data is likely to be computationally expensive.` >}}

## Further Exploration

- {{<reference author="Software Design Knights"
  year="2021"
  title="Fail Fast (FF)"
  site="PrinciplesWiki.net"
  link="http://principles-wiki.net/principles:fail_fast" >}}
- {{<reference author="Thomas, D.; Hunt, A."
  year="2019"
  title="The Pragmatic Programmer, 20th Anniversary Edition: your journey to mastery"
  isbn="9780135957059"
  publisher="Addison-Wesley Professional"
  link="https://pragprog.com/titles/tpp20/the-pragmatic-programmer-20th-anniversary-edition/" >}}
- {{<reference author="Raymond, E.S."
   year="2003"
   title="The Art of Unix Programming"
   isbn="9780131429017"
   publisher="Addison-Wesley"
   link="http://www.catb.org/~esr/writings/taoup/html/ch01s06.html#id2878538" >}}
- {{<reference author="SD Development"
  year="2023"
  title="Java Modular Validators"
  site="GitHub.com"
  link="https://github.com/sddevelopment-be/modular-validators" >}}
- {{<reference author="Gorts, S."
  year="2023"
  title="Better Validation Rules with ValidationResults"
  publisher="Self-published on Public Domain"
  link="https://www.linkedin.com/posts/svengorts_better-validation-rules-with-validationresults-activity-7139998913746329600-Zv4B" >}}

---
