#!/bin/bash

cd /usr/share/nginx/html
rm -R ./*
wget -O pkg.zip $DOWNLOAD_LINK
unzip pkg.zip
rm pkg.zip

if [ -d "dist" ]; then
  mv dist/* .
fi

nginx -c /etc/nginx/nginx.conf -g "daemon off;"
