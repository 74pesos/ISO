#!/bin/bash
if [ $# -ne 1 ];
then
	echo "error con los argumentos"
	exit 1
else
	for user in $(ls /home/)
	do
		cant=$(find /home/$user/ | grep -i .$1 -c)
		echo "$user $cant">> reporte.txt
	done
fi
exit 0
