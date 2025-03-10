FROM alpine
ENV LOG_FORMAT COMBINED
ENV LOG_NAME ".access.log"
RUN apk --no-cache add goaccess caddy
WORKDIR /usr/share/GeoIP
RUN wget https://dl.miyuru.lk/geoip/maxmind/country/maxmind.dat.gz &&\
	gzip -d maxmind.dat.gz &&\
    mv maxmind.dat GeoIP.dat
RUN mkdir -p /goaccess/logs
COPY scripts /scripts
COPY docker-entrypoint /usr/local/bin/
WORKDIR /
ENTRYPOINT ["docker-entrypoint"]