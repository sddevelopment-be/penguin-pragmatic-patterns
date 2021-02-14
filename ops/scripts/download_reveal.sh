#!/bin/bash

wget -nc https://github.com/hakimel/reveal.js/archive/3.9.2.tar.gz
tar -xzvf 3.9.2.tar.gz
cp -R -u reveal.js-3.9.2 ops/scripts/reveal.js
cp -r -u ops/templates/*.css ops/scripts/reveal.js/css/theme/
cp -r -u ops/templates/images ops/scripts/reveal.js/css/theme/images
mkdir -p output/scripts
mkdir -p output/scripts/reveal.js
cp -r -u ops/scripts/reveal.js/* output/scripts/reveal.js/
cp -R -u output/scripts/reveal.js/dist/* output/scripts/reveal.js/css/
