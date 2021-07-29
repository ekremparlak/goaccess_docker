#!/bin/sh 
find /logs -maxdepth 1 -type f -name "*$LOG_NAME*" -print0 |  xargs -0 -I '{}' env SUBFOLDER='{}' /scripts/run_static.sh
