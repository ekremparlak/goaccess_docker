#!/bin/sh
set -e
cat <<EOF > /Caddyfile
:80
file_server {
browse
root /html/logs
}
EOF