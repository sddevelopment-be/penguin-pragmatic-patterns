#!/bin/bash
# Fix the @use "colors" import placement in all Fresh theme partials

PARTIALS_DIR="/media/stijnd/DATA/development/projects/penguin-pragmatic-patterns/assets/fresh-overrides/partials"
LOG_FILE="/media/stijnd/DATA/development/projects/penguin-pragmatic-patterns/work/logs/fix-colors-import.log"

echo "Fixing @use 'colors' import placement in Fresh theme partials..." > "$LOG_FILE"
echo "Started at: $(date)" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# List of partials that need fixing
PARTIALS=(
    "_sections.scss"
    "_buttons.scss"
    "_cards.scss"
    "_dropdowns.scss"
    "_footer.scss"
    "_forms.scss"
    "_hero.scss"
    "_responsive.scss"
    "_testimonials.scss"
    "_utils.scss"
    "_animations.scss"
)

for file in "${PARTIALS[@]}"; do
    filepath="$PARTIALS_DIR/$file"

    if [ ! -f "$filepath" ]; then
        echo "WARNING: File not found: $filepath" >> "$LOG_FILE"
        continue
    fi

    # Remove any existing misplaced @use imports
    sed -i '/@use "colors" as \*;/d' "$filepath"

    # Find the line number where the header comment ends (after the ========== line following the header)
    # Then add the import after that
    awk '
        BEGIN { found = 0; printed = 0 }
        {
            print $0
            if (!printed && found && /^\s*$/) {
                print ""
                print "@use \"colors\" as *;"
                printed = 1
            }
            if (/==========/) {
                found = 1
            }
        }
    ' "$filepath" > "$filepath.tmp" && mv "$filepath.tmp" "$filepath"

    echo "FIXED: $file" >> "$LOG_FILE"
done

echo "" >> "$LOG_FILE"
echo "Completed at: $(date)" >> "$LOG_FILE"
echo "Fix complete. Check the log at: $LOG_FILE"
cat "$LOG_FILE"

