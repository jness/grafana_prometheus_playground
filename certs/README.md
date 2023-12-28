# Create certs using openssl


### Create certificate for prometheus api

```
openssl req \
  -x509 \
  -newkey rsa:4096 \
  -nodes \
  -keyout example-prometheus.com.key \
  -out example-prometheus.com.crt \
  -subj "/C=US/ST=example/L=example/O=example/OU=example/CN=example-prometheus.com"  \
  -addext "subjectAltName = DNS:prometheus" 
```

### Create certificate for node exporter api

```
openssl req \
  -x509 \
  -newkey rsa:4096 \
  -nodes \
  -keyout example-node.com.key \
  -out example-node.com.crt \
  -subj "/C=US/ST=example/L=example/O=example/OU=example/CN=example-node.com"  \
  -addext "subjectAltName = DNS:ubuntu" 
```