#!/bin/sh
printf ":8080\n    file_server {\n    root /goaccess\n    browse\n}\n" >> /Caddyfile
if [[ -n $BASIC_USER && -n $BASIC_PASSWORD ]] ; then HASHED_PASSWORD=$( caddy hash-password --plaintext $BASIC_PASSWORD) && printf "basicauth * {\n	$BASIC_USER $HASHED_PASSWORD \n}\n" >> /Caddyfile ; fi