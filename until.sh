#! /bin/bash
edad=$1
mensaje=$2
until [ $edad -gt $3 ]
do
	echo "La edad es $edad, $mensaje"
	edad=$(( edad+$4 ))
done
