#!/bin/bash
if [ $# -ne 1 ]
then
	echo "Error de parametros"
	exit 1 
else
	if [ $(cat /etc/passwd | grep "$1" | wc -l) -ne 0 ]
	then 
		while [ $(who | grep $1 | wc -l ) -eq 0 ]
		do
			sleep 10
		done
		echo "SE LOGEO"
	else
		echo "El usuario no existe"
	fi
fi
exit 0 
