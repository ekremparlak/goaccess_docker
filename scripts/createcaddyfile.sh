#!/bin/sh
set -e
cat <<EOF > /Caddyfile
:8080
file_server {
    root /goaccess
    browse
}
EOF