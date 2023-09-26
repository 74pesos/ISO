#!/bin/bash
num=(10 3 5 7 9 3 5 4)
resultado=1
for i in ${num[@]}
do
	resultado=$((resultado*=$i))
done
echo "EL RESULTADO DE LA MULTIPLICACION FUE: $resultado"
exit 0 
