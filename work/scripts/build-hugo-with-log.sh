#!/bin/bash
# Build Hugo and log output for analysis

BUILD_LOG="/media/stijnd/DATA/development/projects/penguin-pragmatic-patterns/work/logs/hugo-build-$(date +%Y%m%d-%H%M%S).log"

echo "Building Hugo site..." | tee "$BUILD_LOG"
echo "Started at: $(date)" | tee -a "$BUILD_LOG"
echo "================================================" | tee -a "$BUILD_LOG"
echo "" | tee -a "$BUILD_LOG"

cd /media/stijnd/DATA/development/projects/penguin-pragmatic-patterns

# Run Hugo build and capture all output
hugo --gc --minify --buildDrafts=false 2>&1 | tee -a "$BUILD_LOG"

BUILD_EXIT_CODE=${PIPESTATUS[0]}

echo "" | tee -a "$BUILD_LOG"
echo "================================================" | tee -a "$BUILD_LOG"
echo "Completed at: $(date)" | tee -a "$BUILD_LOG"
echo "Exit code: $BUILD_EXIT_CODE" | tee -a "$BUILD_LOG"
echo "" | tee -a "$BUILD_LOG"
echo "Build log saved to: $BUILD_LOG" | tee -a "$BUILD_LOG"

# Count warnings and errors
WARN_COUNT=$(grep -c "WARN" "$BUILD_LOG" || echo "0")
ERROR_COUNT=$(grep -c "ERROR" "$BUILD_LOG" || echo "0")

echo "" | tee -a "$BUILD_LOG"
echo "Summary:" | tee -a "$BUILD_LOG"
echo "  Warnings: $WARN_COUNT" | tee -a "$BUILD_LOG"
echo "  Errors: $ERROR_COUNT" | tee -a "$BUILD_LOG"

exit $BUILD_EXIT_CODE

