
#!/bin/bash
# Add @use "colors" import to all Fresh theme partial files that need it

PARTIALS_DIR="/media/stijnd/DATA/development/projects/penguin-pragmatic-patterns/assets/fresh-overrides/partials"
LOG_FILE="/media/stijnd/DATA/development/projects/penguin-pragmatic-patterns/work/logs/add-colors-import.log"

echo "Adding @use 'colors' imports to Fresh theme partials..." > "$LOG_FILE"
echo "Started at: $(date)" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# List of partials that need color imports (excluding _colors.scss itself)
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

    # Check if import already exists
    if grep -q "@use.*colors" "$filepath"; then
        echo "SKIP: $file (already has colors import)" >> "$LOG_FILE"
    else
        # Find the line after the header comment block (after ========== line)
        # Add the import right after the header
        sed -i '/^\/\* =/,/\*\// a\
\
@use "colors" as *;' "$filepath"

        echo "ADDED: $file" >> "$LOG_FILE"
    fi
done

echo "" >> "$LOG_FILE"
echo "Completed at: $(date)" >> "$LOG_FILE"
echo "Check the log at: $LOG_FILE"
cat "$LOG_FILE"

