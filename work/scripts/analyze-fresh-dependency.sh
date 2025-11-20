#!/bin/bash
# Analyze Fresh theme dependency and usage

REPO_ROOT="/media/stijnd/DATA/development/projects/penguin-pragmatic-patterns"
FRESH_CACHE="$HOME/.cache/hugo_cache/modules/filecache/modules/pkg/mod/github.com/\!stef\!ma/hugo-fresh@v1.0.0"
OUTPUT_FILE="$REPO_ROOT/work/analysis/fresh-theme-dependency-analysis.md"

echo "# Fresh Theme Dependency Analysis" > "$OUTPUT_FILE"
echo "**Date:** $(date +%Y-%m-%d)" >> "$OUTPUT_FILE"
echo "**Analyst:** Frontend Freddy" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "## 1. Current Dependency Status" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Check if Fresh theme exists in cache
if [ -d "$FRESH_CACHE" ]; then
    echo "✅ Fresh theme found in Hugo cache" >> "$OUTPUT_FILE"
    echo "\`\`\`" >> "$OUTPUT_FILE"
    ls -lh "$FRESH_CACHE" | head -5 >> "$OUTPUT_FILE"
    echo "\`\`\`" >> "$OUTPUT_FILE"
else
    echo "❌ Fresh theme NOT found in Hugo cache" >> "$OUTPUT_FILE"
fi

echo "" >> "$OUTPUT_FILE"
echo "## 2. Asset Overrides" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Count our local Fresh theme files
LOCAL_FRESH_COUNT=$(find "$REPO_ROOT/assets/styles/fresh" -type f 2>/dev/null | wc -l)
echo "**Local Fresh overrides:** $LOCAL_FRESH_COUNT files" >> "$OUTPUT_FILE"

if [ -d "$FRESH_CACHE/assets/fresh" ]; then
    UPSTREAM_FRESH_COUNT=$(find "$FRESH_CACHE/assets/fresh" -type f 2>/dev/null | wc -l)
    echo "**Upstream Fresh assets:** $UPSTREAM_FRESH_COUNT files" >> "$OUTPUT_FILE"
    OVERRIDE_PCT=$((LOCAL_FRESH_COUNT * 100 / UPSTREAM_FRESH_COUNT))
    echo "**Override percentage:** ${OVERRIDE_PCT}% of theme assets" >> "$OUTPUT_FILE"
fi

echo "" >> "$OUTPUT_FILE"
echo "## 3. Layout Overrides" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Count local layouts
LOCAL_LAYOUTS=$(find "$REPO_ROOT/layouts" -type f -name "*.html" 2>/dev/null | wc -l)
echo "**Local layouts:** $LOCAL_LAYOUTS files" >> "$OUTPUT_FILE"

# List local layout structure
echo "" >> "$OUTPUT_FILE"
echo "### Local Layout Structure" >> "$OUTPUT_FILE"
echo "\`\`\`" >> "$OUTPUT_FILE"
tree -L 2 "$REPO_ROOT/layouts" 2>/dev/null || find "$REPO_ROOT/layouts" -type f -name "*.html" | head -20 >> "$OUTPUT_FILE"
echo "\`\`\`" >> "$OUTPUT_FILE"

if [ -d "$FRESH_CACHE/layouts" ]; then
    UPSTREAM_LAYOUTS=$(find "$FRESH_CACHE/layouts" -type f -name "*.html" 2>/dev/null | wc -l)
    echo "" >> "$OUTPUT_FILE"
    echo "**Upstream Fresh layouts:** $UPSTREAM_LAYOUTS files" >> "$OUTPUT_FILE"

    if [ $UPSTREAM_LAYOUTS -gt 0 ]; then
        LAYOUT_OVERRIDE_PCT=$((LOCAL_LAYOUTS * 100 / UPSTREAM_LAYOUTS))
        echo "**Layout override percentage:** ${LAYOUT_OVERRIDE_PCT}%" >> "$OUTPUT_FILE"
    fi
fi

echo "" >> "$OUTPUT_FILE"
echo "## 4. Dependency References" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Search for Fresh theme references
echo "### Files Mentioning hugo-fresh" >> "$OUTPUT_FILE"
echo "\`\`\`" >> "$OUTPUT_FILE"
grep -r "hugo-fresh" "$REPO_ROOT" --include="*.yaml" --include="*.toml" --include="*.mod" 2>/dev/null | grep -v ".git" | grep -v "node_modules" >> "$OUTPUT_FILE"
echo "\`\`\`" >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "## 5. What Fresh Theme Provides" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

if [ -d "$FRESH_CACHE" ]; then
    echo "### Upstream Fresh Theme Structure" >> "$OUTPUT_FILE"
    echo "\`\`\`" >> "$OUTPUT_FILE"
    tree -L 3 "$FRESH_CACHE" 2>/dev/null || ls -R "$FRESH_CACHE" | head -50 >> "$OUTPUT_FILE"
    echo "\`\`\`" >> "$OUTPUT_FILE"
fi

echo "" >> "$OUTPUT_FILE"
echo "---" >> "$OUTPUT_FILE"
echo "*Analysis complete. Review output at: $OUTPUT_FILE*" >> "$OUTPUT_FILE"

cat "$OUTPUT_FILE"

