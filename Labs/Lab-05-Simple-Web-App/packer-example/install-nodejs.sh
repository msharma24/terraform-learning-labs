#!/bin/bash
# A script that install nodejs and npm  on Ubuntu 18.04.

set -e

echo "[INFO] Updating Ubuntu"
sudo apt-get update -y

echo "[INFO] Installing packages"
sudo apt install  nodejs npm gcc g++ make yarn build-essential -y

echo "[INFO] nodejs version"
nodejs -v

echo "[INFO] npm version"
npm -v

echo "[INFO] Installing PM2 package to demonize applications"
sudo npm install pm2@latest -g

