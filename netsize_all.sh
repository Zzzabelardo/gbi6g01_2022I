#!/bin/bash
# Escriba un script que tome uno de estos archivos y determine el número de filas (polinizadores) y columnas (plantas). Tenga en cuenta que las columnas están separadas por espacios y que hay un espacio al final de cada línea. Tu script debería regresar

echo "Luis Roa, Análisis de datos con bucle for" >>netsize_all.txt
for file in Saavedra2013/*.txt
do
	Filas=`cat $file | wc -l`
        Columnas=`head -n 1 $file | tr -d "\n" | tr -d " " | wc -c`
        echo "Filas de $file son: $Filas." >> netsize_all.txt | echo "Columnas de $file $Columnas." >> netsize_all.txt
done

