#!/bin/bash

echo "Building documents"
echo ''
echo '> PenguinProgramming_PragmaticPatterns.md [sdd-base] '
cp -r ./docs/people-skills/leadership/img/*.* ./docs/img/
cp -r ./docs/programming/img/*.* ./docs/img/
cp -r ./docs/programming/patterns/img/*.* ./docs/img/
cp -r ./docs/productivity/articles/img/*.* ./docs/img/
docker-compose -f ./ops/docker-compose.yml exec -T linux sh /root/docGen/scripts/doc_runner.sh pengprog_patterns sdd-base

#echo '> slidedeck.md [eisvogel]'
# docker-compose -f ./ops/docker-compose.yml exec -T linux sh /root/docGen/scripts/slide_runner.sh documents/slidedeck/docGen-slidedeck.md docgen_slides eisvogel

# echo '> slidedeck.md [reveal.js SDD]'
# docker-compose -f ./ops/docker-compose.yml exec -T linux sh /root/docGen/scripts/slide_web_runner.sh documents/slidedeck/docGen-slidedeck.md docgen_slides markdown_github

echo '> Pragmatic Patterns [sphinx website]'
mkdir -p output/docsite
docker-compose -f ./ops/docker-compose.yml exec -T linux sphinx-build -b dirhtml docs output/docsite
docker cp output/docsite ops_webserver_1:/usr/local/apache2/htdocs/

echo '-=[ DONE ]=-'
