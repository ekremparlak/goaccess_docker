### Usage

```
docker run -d \
  -v /var/log/nginx:/logs:ro \
  -p 8080:80 \
  ghcr.io/ekremparlak/goaccess
```


## Environment Variables

`LOG_FORMAT` default: "COMBINED"
