#!/bin/bash
SERVER_PATH=mock/path
echo "atualizando o servidor..."

apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo "atualizando o servidor..."

cd /tmp
wget ${SERVER_PATH}/main.zip
unzip main.zip
cd linux-site-main
cp -R * /var/www/html/
