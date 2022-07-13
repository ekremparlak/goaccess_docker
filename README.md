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

`BASIC_USER` and `BASIC_PASSWORD` : you can set this to have a basic auth login page.