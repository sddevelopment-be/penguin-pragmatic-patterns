#!/bin/bash

# Simple iterative parser implementation for a TOML file containing bibliographical information
outputDir="content/books"
book="";
title=""
id=""
title=""
draft="false"
tags="[]"
complexity="[]"

while read p; do
  if [ "$p" = "[[book]]" ]; then
    book=true
    echo "DEBUG: Found book!"
  fi
  if [ "$p" = "" ] && [ $book ]; then
      echo "DEBUG: Found end of book!";
      outFile="$outputDir/$(echo $id | sed "s/[\" ]//g").md";
      echo "DEBUG: Writing to $outFile";

      echo "+++" > "$outFile";
      echo "title = $title" >> "$outFile";
      echo "id = $id" >> "$outFile";
      echo "tags = $tags" >> "$outFile";
      echo "levels = $complexity" >> "$outFile";
      echo "draft = $draft" >> "$outFile";
      echo "+++" >> "$outFile";
      echo "Wrote data to $outFile !";

      book=""
      title=""
      id=""
      draft=false
      title=""
      tags="[]"
      complexity="[]"
  fi

  if [ $book ]; then
    testId=$(echo "$p" | sed -n "/^id =/p")
    if [ "$testId"  ]; then
        id=$(echo "$p" | awk -F"= " '/id/{print $2}');
        echo "DEBUG: Found book id: $id";
    fi
    testTitle=$(echo "$p" | sed -n "/^title =/p")
    if [ "$testTitle" ]; then
        title=$(echo "$p" | awk -F"= " '/title/{print $2}');
        echo "DEBUG: Found title: $title";
    fi
    testTags=$(echo "$p" | sed -n "/^tags =/p")
    if [ "$testTags" ]; then
        tags=$(echo "$p" | awk -F"= " '/tags/{print $2}');
        echo "DEBUG: Found tags: $tags";
    fi
    testLevels=$(echo "$p" | sed -n "/^levels =/p")
    if [ "$testLevels" ]; then
        complexity=$(echo "$p" | awk -F"= " '/levels/{print $2}');
    fi
    testDraft=$(echo "$p" | sed -n "/^draft =/p")
    if [ "$testDraft" ]; then
        draft=$(echo "$p" | awk -F"= " '/draft/{print $2}');
    fi
  fi
done < "$1"