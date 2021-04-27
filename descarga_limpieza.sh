#!/bin/bash

echo "Iniciando descarga de archivos - Puede tardar unos minutos "

curl -O http://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip

unzip  datos_abiertos_covid19.zip

# Creando el archivo de datos final csv.
csvcut  -c ENTIDAD_UM,SEXO,FECHA_DEF,EDAD,CLASIFICACION_FINAL  COVID19MEXICO.csv  | csvgrep -c JOV -m "1"|  csvgrep -c ENTIDAD_UM -m "26"| csvgrep -c SEXO -m "1"| csvgrep -c CLASIFICACION_FINAL -m "1" > bd_reducida.csv

rm datos_abiertos_covid19.zip

echo "Descarga y preparación de archivos finalizada"


