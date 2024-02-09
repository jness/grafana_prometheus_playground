# Grafana and Prometheus Playground

Our `docker-compose.yaml` creates 3 containers:

* Prometheus
* Grafana
* Ubuntu (built from Dockerfile to run `node-exporter`)

If you wish to explore the setup with SSL certificates
have a look at the `with-cert` branch.

## Startup

```
docker-compose up
```

## Access

### Prometheus UI

* http://localhost:9090

![alt text](prometheus.jpg)

### Grafana UI

* http://localhost:3000

> user: admin
> password: admin

Configure http://prometheus:9090 as a Prometheus data source:

* http://localhost:3000/connections/datasources

Explore prometheus's metrics:

* http://localhost:3000/explore

![alt text](grafana.jpg)
