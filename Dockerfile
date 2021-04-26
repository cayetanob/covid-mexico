# Selecciona la imagen base Ubuntu
FROM ubuntu

LABEL Cayetano <cayetano@gmail.com>

WORKDIR /datos-covid

RUN  apt-get -y update && \
     apt-get install -yq curl nano vim unzip git csvkit

ADD descarga_limpieza.sh  /

ENTRYPOINT ["/descarga_limpieza.sh"]

CMD ["bash"]

