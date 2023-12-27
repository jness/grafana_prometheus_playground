# Grafana and Prometheus Playground

This is a very simple playground with nearly nothing custom.

Our `docker-compose.yaml` creates 3 containers:

* Prometheus (using our custom prometheus.yml config)
* Grafana
* Ubuntu (built from Dockerfile to run `node-exporter`)

## Startup using docker-compose:

```
docker-compose up
```

## Access

From your local machine:

* http://localhost:9090  # prometheus ui

![alt text](prometheus.jpg)


* http://localhost:3000  # grafana

![alt text](grafana.jpg)
