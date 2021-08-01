### Usage

```
docker run -d \
  -v /var/log/nginx:/logs:ro \
  -p 8080:8080 \
  ghcr.io/ekremparlak/goaccess
```


## Environment Variables

`LOG_FORMAT` default: "COMBINED"

`ANONYMIZE` if set to "true" will anonymize ips

