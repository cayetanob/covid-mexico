# Datos de Covid México

<img src="covid-mexico.jpg">

## Datos de covid de méxico actualizados.


La fuente de la información es de los Datos Abiertos Dirección General de Epidemiología del Gobierno de México.

[Fuente de datos](https://www.gob.mx/salud/documentos/datos-abiertos-152127)

Los datos estan en formato CSV (comma separated values) y estan compresos en una archivo ZIP.
Invluye también Descripción de los Datos, y Catálgo.

## Pasos para descargar este repositorio y ejecutarlo. 

1.- Clonar el repositorio.

    git clone https://github.com/cayetanob/covid-mexico.git
    
2.- Construir el contenedor, ejecutando Dockerfile

    docker build -t ubuntu .
    
3.- Ejecutar la imagen.   

    docker run -it --name datos-covid username/bash-curso



Gracias.

<img src="https://octodex.github.com/images/yaktocat.png" width="200">



