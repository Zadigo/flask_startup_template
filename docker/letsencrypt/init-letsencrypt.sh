#!/bin/bash

data_path="./data/certbot"

# Check if paths exists -- else, download the basic
# configuration files to start CERTBOT
if [ ! -e "$data_path/conf/options-ssl-nginx.conf" ] || [ ! -e "$data_path/conf/ssl-dhparams.pem" ]; then
  echo "1. Downloading recommended TLS parameters"
  echo
fi