#!/bin/bash
pila=()
echo "pila :)"
select option in push length pop print finish
do
case $option in
	"push")
		read value
		pila+=($value)
	;;
	"pop")
		last=${pila[$((${#pila[@]}-1))]}
		unset pila[$((${#pila[@]}-1))]
		echo "last tiene: $last"
	;;
	"length")
		echo "Pila tiene : ${#pila[@]} elementos"
	;;
	"print")
		echo "${pila[@]}"
	;;
	"finish")
		exit 0
	;;
esac
done

