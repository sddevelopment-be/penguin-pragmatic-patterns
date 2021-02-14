#!/bin/bash

echo ''
echo "Printing diagrams to ./output/diagrams"
mkdir -p ./output/diagrams

echo ''
echo 'Converting UML Images'
curl localhost:8000/plantuml/svg --data-binary '@documents/diagrams/alice.puml' > ./output/diagrams/alice.svg
curl localhost:8000/plantuml/svg --data-binary '@documents/diagrams/simple_diagram.puml' > ./output/diagrams/simple_diagram.svg
curl localhost:8000/plantuml/png --data-binary '@documents/diagrams/simple_diagram.puml' > ./output/diagrams/simple_diagram.png
curl localhost:8000/plantuml/png --data-binary '@documents/diagrams/simple_diagram_blue.puml' > ./output/diagrams/simple_diagram_blue.png

echo ''
echo 'Converting c4-UML images'
curl localhost:8000/c4plantuml/svg --data-binary '@documents/diagrams/system_context_c4.puml' > ./output/diagrams/c4_system_context.svg

curl localhost:8000/c4plantuml/svg --data-binary '@documents/diagrams/c4_container_banking.puml' > ./output/diagrams/c4_container_banking.svg

curl localhost:8000/c4plantuml/svg --data-binary '@documents/diagrams/c4_plantuml.puml' > ./output/diagrams/c4_plantuml.svg

echo ''
echo 'Converting BPMN images'
curl localhost:8000/bpmn/svg --data-binary '@documents/diagrams/order_pizza.bpmn' > ./output/diagrams/bmpn_order_pizza.svg
