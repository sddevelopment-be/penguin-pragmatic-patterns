#!/bin/bash

# Simple STAX parser implementation for a TOML file containing bibliographical information
outputDir="content/books"
book=false;
title=""
id=""
title=""
draft="false"
tags="[]"
complexity="[]"

while read p; do
  if [ "$p" = "[[book]]" ]; then
    book=true
  fi
  if [ "$p" = "" ]; then
      outFile="$outputDir/$(echo $id | sed "s/[\" ]//g").md";
      echo "+++" > $outFile;
      echo "title = $title" >> $outFile;
      echo "id = $id" >> $outFile;
      echo "tags = $tags" >> $outFile;
      echo "levels = $complexity" >> $outFile;
      echo "draft = $draft" >> $outFile;
      echo "+++" >> $outFile;
      echo "Wrote data to $outFile !";

      book=false
      title=""
      id=""
      draft=false
      title=""
      tags="[]"
      complexity="[]"
  fi

  if [ $book ]; then
    if [[ "$p" = "id = "* ]]; then
        id=$(echo "$p" | awk -F"=" '/id/{print $2}');
    fi
    if [[ "$p" = "title = "* ]]; then
        title=$(echo "$p" | awk -F"=" '/title/{print $2}');
    fi
    if [[ "$p" = "tags = "* ]]; then
        tags=$(echo "$p" | awk -F"=" '/tags/{print $2}');
    fi
    if [[ "$p" = "levels = "* ]]; then
        complexity=$(echo "$p" | awk -F"=" '/levels/{print $2}');
    fi
    if [[ "$p" = "draft = "* ]]; then
        draft=$(echo "$p" | awk -F"=" '/draft/{print $2}');
    fi
  fi
done < $1