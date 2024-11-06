#!/bin/bash

CSS_DIR=$1

echo "Minifying CSS files in $CSS_DIR"

if [ ! -d "$CSS_DIR" ]; then
  echo "Directory $CSS_DIR does not exist."
  exit 1
fi

for file in "$CSS_DIR"/*.css; do
  # Skip if no CSS files are found
  [ -e "$file" ] || continue

  minified_file="${file%.css}.min.css"

  uglifycss "$file" --output "$minified_file"

  echo "Minified $file to $minified_file"

done

echo "CSS minification complete."
