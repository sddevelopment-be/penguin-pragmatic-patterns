#!/usr/bin/bash

echo '=================== <(^v^)> ====================='
echo '||      Document generation run starting       ||'
echo '================================================='

echo ' '
echo ' '
echo '<(^v^)> -{ Restarting the docker containers } '
docker-compose -f ./ops/docker-compose.yml up -d --force-recreate --remove-orphans

echo ' '
docker ps --format 'table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}'

echo ' '
echo ' '
echo '<(^v^)> -{ Converting the diagrams and adding them to the expected img directories } '
bash ./ops/scripts/convert_diagrams.sh


echo ' '
echo ' '
echo '<(^v^)> -{ Cleaning output and converting the documents } '
rm -rf ./output/*
bash ./ops/scripts/convert_documents.sh

echo ' '
echo ' '
echo '=================== <(^v^)> ====================='
echo '||           DONE. Have a nice day!            ||'
echo '================================================='
