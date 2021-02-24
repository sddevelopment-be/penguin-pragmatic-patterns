#!/bin/bash

echo "Building documents"
echo ''
echo '> PenguinProgramming_PragmaticPatterns.md [sdd-base] '
cp -r ./docs/people-skills/leadership/img/*.* ./docs/img/
cp -r ./docs/programming/img/*.* ./docs/img/
cp -r ./docs/programming/patterns/img/*.* ./docs/img/
cp -r ./docs/productivity/articles/img/*.* ./docs/img/
docker-compose -f ./ops/docker-compose.yml exec -T linux sh /root/docGen/scripts/doc_runner.sh pengprog_patterns sdd-base

echo '-=[ DONE ]=-'
