#!/bin/sh 
PORT=$(echo $RANDOM)
echo reverse_proxy $SUBFOLDER http://127.0.0.1:$PORT >> /Caddyfile
goaccess  --daemonize $SUBFOLDER -o /html$SUBFOLDER.html --log-format=$LOG_FORMAT --real-time-html --addr=0.0.0.0 --port=$PORT --ws-url=ws://$SERVER:80$SUBFOLDER