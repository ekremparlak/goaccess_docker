### Usage

```
docker run -d \
  -e PORT=8080 \
  -e SERVER=youripadress
  -v /var/log/nginx:/logs:ro \
  -p 8080:80 \
  ghcr.io/ekremparlak/goaccess
```


## Environment Variables

`SERVER` Server ip adress, default "127.0.0.1"

`PORT` No need to change if you are gonna use a proxy server, otherwise should be same with opened port. Default: "80"

`LOG_FORMAT` default: "COMBINED"
