#!/bin/sh 
if [ "$ANONYMIZE" == "true" ]; then ANONYMIZE_IP="--anonymize-ip" ; fi
goaccess $SUBFOLDER -o /html$SUBFOLDER.html --log-format=$LOG_FORMAT $ANONYMIZE_IP