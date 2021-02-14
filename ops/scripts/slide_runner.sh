#!/bin/bash

pandoc $1 -o output/$2-$(date +%F).pdf --from markdown --to beamer --template $3.latex --listings --highlight-style pygments
