#!/bin/bash
cat docs/_sidebar.md | tail -n +2 | head -n -1 | sed -E ':b s/(\[)([^<]*)_([^<]*)(\])/\1\2 \3\4/;tb' | sed -E ':b s/(\[)([0-9X])\s([^<]*)(\])/\1\2. \3\4/;tb' > src/_sidebar.md