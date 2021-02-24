#!/bin/bash

pandoc ./docs/style.yml ./docs/README.md ./docs/productivity/README.md ./docs/productivity/patterns/*.md ./docs/productivity/ARTICLES.md ./docs/productivity/articles/*.md ./docs/people-skills/leadership/README.md ./docs/programming/*.md ./docs/programming/patterns/*.md ./docs/architecture/README.md  ./docs/GLOSSARY.md -o output/$1-$(date +%F).pdf --from markdown --template ./templates/$2.latex --toc --number-sections --listings --highlight-style pygments --lua-filter ./templates/sdd-docx/filters/pagebreak.lua -f markdown+implicit_figures

chmod -R 777 output
