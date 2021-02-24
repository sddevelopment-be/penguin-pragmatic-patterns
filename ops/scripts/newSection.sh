#!/usr/bin/bash

echo 'Generating empty repository and default files for sections'
mkdir -p ./docs/$1
cp ./templates/TEMPLATE_README.md ./docs/$1/README.md
cp ./templates/TEMPLATE_ARTICLES.md ./docs/$1/ARTICLES.md
mkdir -p ./docs/$1/img
cp ./templates/.gitkeep ./docs/$1
mkdir -p ./docs/$1/articles
cp ./templates/.gitkeep ./docs/$1/articles/
mkdir -p ./docs/$1/articles/img
cp ./templates/.gitkeep ./docs/$1/articles/img/
mkdir -p ./docs/$1/patterns
cp ./templates/.gitkeep ./docs/$1/patterns/
mkdir -p ./docs/$1/patterns/img
cp ./templates/.gitkeep ./docs/$1/patterns/img
