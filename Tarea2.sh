#!/bin/bash
echo "ggo_miR" >contadorsecuencias.csv |grep -n ">" $1 |wc -l >>contadorsecuencias.csv 
echo "hsa_miR" >>contadorsecuencias.csv |grep -n ">" $2 |wc -l >>contadorsecuencias.csv 
echo "ppa_miR" >>contadorsecuencias.csv |grep -n ">" $3 |wc -l >>contadorsecuencias.csv 
echo "ppy_miR" >>contadorsecuencias.csv |grep -n ">" $4 |wc -l >>contadorsecuencias.csv 
echo "ptr_miR" >>contadorsecuencias.csv |grep -n ">" $5 |wc -l >>contadorsecuencias.csv 
echo "ssy_miR" >>contadorsecuencias.csv |grep -n ">" $6 |wc -l >>contadorsecuencias.csv

