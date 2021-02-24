#!/bin/bash

echo ''
echo "Printing diagrams to ./output/diagrams"
mkdir -p ./output/diagrams

echo ''
echo 'Converting UML Images'
# curl localhost:8000/plantuml/svg --data-binary '@documents/diagrams/alice.puml' > ./output/diagrams/alice.svg

echo ''
echo 'Converting c4-UML images'
# curl localhost:8000/c4plantuml/svg --data-binary '@documents/diagrams/system_context_c4.puml' > ./output/diagrams/c4_system_context.svg

echo ''
echo 'Converting BPMN images'
# curl localhost:8000/bpmn/svg --data-binary '@documents/diagrams/order_pizza.bpmn' > ./output/diagrams/bmpn_order_pizza.svg
