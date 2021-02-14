#!/bin/bash

# Convert a Markdown file to .docx
# Rule 1: Use Pandoc only where necessary

# Figure out where everything is
SCRIPT="$(realpath "$0")"
SCRIPT_PATH="$(dirname "$SCRIPT")"
ROOT_PATH="$(realpath "$SCRIPT_PATH/..")"
PROJECT_PATH="$(realpath "$ROOT_PATH/..")"
FILTERS_PATH="$(realpath "$ROOT_PATH/templates/sdd-docx")"
LUA_PATH="$FILTERS_PATH/?.lua;;"
export LUA_PATH
PANDOC_TEMPLATES="$(realpath "$ROOT_PATH/templates/sdd-docx")"

declare -a FILES=()
while [[ $# -gt 0 ]]
do
  key="$1"

  case $key in
    -h|--help)
    echo "
md2long.sh --output DOCX [--overwrite] FILES

  -o DOCX               --output=DOCX
    Write the output to DOCX. Passed straight to pandoc as-is.
  -x                    --overwrite
    If output FILE exists, overwrite without prompting.
  FILES
    One (1) or more Markdown file(s) to be converted to DOCX.
    Passed straight to pandoc as-is.

"
    exit 0
    ;;
    -x|--overwrite)
    OVERWRITE="1"
    shift
    ;;
    -t|--template)
    TEMPLATE="$2"
    export TEMPLATE
    shift
    shift # past value
    ;;
    -o|--output) # output file
    OUTFILE="$2"
    shift # past argument
    shift # past value
    ;;
    *)    # files to process
    FILES+=("$1")
    shift # past argument
    ;;
  esac
done

if [[ -z "$OUTFILE" ]]; then
  echo "No --output argument given."
  exit 1
else
  OUTFILE="$(realpath "$OUTFILE")"
fi

# Prompt for confirmation if ${OUTFILE} exists.
if [[ -f "$OUTFILE" && -z "$OVERWRITE" ]]; then
  echo "$OUTFILE exists."
  echo "Do you want to overwrite it?"
  select yn in "Yes" "No"; do
      case $yn in
          Yes ) echo "Overwriting."; break;;
          No ) echo "Cancelling."; exit;;
      esac
  done
fi

# Create a temporary data directory
echo "Creating temporary directory."
export PANDOC_DATA_DIR
PANDOC_DATA_DIR="$(mktemp -d)"
echo "Directory created: $PANDOC_DATA_DIR"

# Prep the template and reference directories
echo "Extracting $TEMPLATE.docx to temporary directory."
unzip -ao "$PANDOC_TEMPLATES/$TEMPLATE.docx" -d "$PANDOC_DATA_DIR/$TEMPLATE" > /dev/null
unzip -ao "$PANDOC_TEMPLATES/$TEMPLATE.docx" -d "$PANDOC_DATA_DIR/reference" > /dev/null
echo "Files extracted."

# Run pandoc
echo "Running Pandoc."
echo "$OUTFILE"
pandoc \
  --from=markdown \
  --to=docx \
  --lua-filter="$PANDOC_TEMPLATES/shunnlong.lua" \
  --data-dir="$PANDOC_DATA_DIR" \
  --output="$OUTFILE" \
  "${FILES[@]:0}"
echo "Pandoc completed successfully."

# Clean up the temporary directory
echo "Removing $PANDOC_DATA_DIR"
rm -rf "$PANDOC_DATA_DIR"
echo "Done."
