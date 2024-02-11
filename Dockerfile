FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    wget \
    curl

COPY bin/node_exporter-1.7.0.linux-amd64.tar.gz .

RUN tar -zxvf node_exporter-1.7.0.linux-amd64.tar.gz

WORKDIR /node_exporter-1.7.0.linux-amd64

CMD [ "./node_exporter" ]