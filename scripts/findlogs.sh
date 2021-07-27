#!/bin/sh 
find /logs -maxdepth 1 -type f -name "*access.log*" -print0 |  xargs -0 -I '{}' env SUBFOLDER='{}' /scripts/run.sh
