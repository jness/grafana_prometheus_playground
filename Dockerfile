FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    wget \
    curl \
    vim \
    python3 \
    pip

RUN pip install prometheus-client

COPY bin/node_exporter-1.7.0.linux-amd64.tar.gz .
COPY scripts/prometheus_client_example.py .
COPY scripts/prometheus_client_pushgateway_example.py .

RUN tar -zxvf node_exporter-1.7.0.linux-amd64.tar.gz

WORKDIR /node_exporter-1.7.0.linux-amd64

CMD [ "./node_exporter" ]
