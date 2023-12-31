# slide_builder.py
# For python 3.x
# python.exe slide_builder.py

import os
from pathlib import Path

# Could gather these from the command line in a future version
source_dir = '../pages'
output_dir = '../output/slides'

def build(input_dir):
    for input_filename in os.listdir(input_dir):
        if input_filename.endswith('.adoc'):
            # build path for input file
            input_path = os.path.join(input_dir, input_filename)
            # build path for output file
            stem = Path(input_filename).stem
            output_filename = f"{stem}-slides.html"
            output_path = os.path.join(output_dir, output_filename)
            # build command to run
            command = f"bundle exec asciidoctor-revealjs -a revealjsdir=https://cdn.jsdelivr.net/npm/reveal.js@4.1.2 -a ctag=slide -o {output_path} {input_path}"
            print(command)
            # run it
            os.system(command)
            continue
        else:
            continue

build(source_dir)
