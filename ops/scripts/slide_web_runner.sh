#!/bin/bash

pandoc $1 -o output/$2-$(date +%F).html --from markdown --to html -c templates/$.css --listings --highlight-style pygments

pandoc -t revealjs -s -o output/$2-$(date +%F)_reveal-slides.html $1 -V revealjs-url=https://unpkg.com/reveal.js@3.9.2/ -V theme=moon -V transition=cube
