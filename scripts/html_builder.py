# html_builder.py
# For python 3.x
# python.exe html_builder.py

import os
from pathlib import Path

# Could gather these from the command line in a future version
source_dir = '../pages'
exercise_dir = '../pages/exercises'
output_dir = '../output/html'

def build(input_dir):
    for input_filename in os.listdir(input_dir):
        if input_filename.endswith('.adoc'):
            # build path for input file
            input_path = os.path.join(input_dir, input_filename)
            # build path for output file
            stem = Path(input_filename).stem
            output_filename = f"{stem}.html"
            output_path = os.path.join(output_dir, output_filename)
            # build command to run
            command = f"asciidoctor -a ctag=html -o {output_path} {input_path}"
            print(command)
            # run it
            os.system(command)
            continue
        else:
            continue

build(source_dir)
build(exercise_dir)
