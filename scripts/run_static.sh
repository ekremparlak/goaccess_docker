#!/bin/sh 
if [ "$ANONYMIZE" == "true" ]; then ANONYMIZE_IP="--anonymize-ip" ; fi
goaccess $SUBFOLDER -o /goaccess$SUBFOLDER.html --log-format=$LOG_FORMAT $ANONYMIZE_IP