# Create certs using openssl

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
