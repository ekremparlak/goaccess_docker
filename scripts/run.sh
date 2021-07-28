#!/bin/sh 
WS_PORT=$(echo $RANDOM)
echo reverse_proxy $SUBFOLDER http://127.0.0.1:$WS_PORT >> /Caddyfile
goaccess  --daemonize $SUBFOLDER -o /html$SUBFOLDER.html --log-format=$LOG_FORMAT --real-time-html --addr=0.0.0.0 --port=$WS_PORT --ws-url=ws://'" + location.host + "'$SUBFOLDER