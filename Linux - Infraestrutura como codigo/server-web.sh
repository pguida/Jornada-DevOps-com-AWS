#!/bin/bash

# Atualiza repositorio
apt-get update && apt-get upgrade -y

# Instalacao Apache
apt-get install apache2 unzip -y

# Arquivos da aplicação
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
