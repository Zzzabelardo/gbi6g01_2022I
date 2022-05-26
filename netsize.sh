#!/bin/bash
# Escriba un script que tome uno de estos archivos y determine el número de filas (polinizadores) y columnas (plantas). Tenga en cuenta que las columnas están separadas por espacios y que hay un espacio al final de cada línea. Tu script debería regresar

echo "Luis Roa, Análisis de datos simple" >> netsize.txt | echo "numero de filas" >> netsize.txt | cat Saavedra2013/n1.txt| wc -l >> netsize.txt | echo "numero de columnas" >> netsize.txt | head -n 1 Saavedra2013/n1.txt | wc -w >> netsize.txt


