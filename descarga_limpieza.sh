#!/bin/bash

echo "Iniciando descarga de archivos - Puede tardar unos minutos "

curl -O http://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip

#Ya descompreso el archivo es mayor a 1GB
unzip  datos_abiertos_covid19.zip

# Creando el archivo de datos final csv.
fecha=$(date -u +"%y%m%d")   # genera año mes dia 
csvgrep -c MUNICIPIO_RES -m "030" $fecha"COVID19MEXICO.csv" > CovidHermosillo.csv

#Nos presenta la fecha con el mayor número de casos en Hermosillo. 
csvstat -c 13 CovidHermosillo.csv > FechaMayorHillo.txt

rm datos_abiertos_covid19.zip

echo "Descarga y preparación de archivos finalizada"


