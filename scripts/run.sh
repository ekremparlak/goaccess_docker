#!/bin/sh 
WS_PORT=$(echo $RANDOM)
if [ "$ANONYMIZE" == "true" ]; then ANONYMIZE_IP="--anonymize-ip" ; fi
echo reverse_proxy $SUBFOLDER http://127.0.0.1:$WS_PORT >> /Caddyfile
goaccess $SUBFOLDER -o /goaccess$SUBFOLDER.html --daemonize  $ANONYMIZE_IP --log-format=$LOG_FORMAT --real-time-html --addr=0.0.0.0 --port=$WS_PORT --ws-url='" + location.host + "'$PORT$SUBFOLDER