#!/bin/bash


echo "Atualizando o sistema"
apt-get update
apt-get upgrade -y

echo "Instalando apache 2 e ativando"
apt-get install apache2 -y
systemctl enable apache2

echo "Instalando unzip"
apt-get install unzip -y

echo "Baixando arquivos site"
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "unzip"
unzip /tmp/main.zip -d /tmp

echo "copiando arquivos para diretorio apache"
cp -r /tmp/linux-site-dio-main/* /var/www/html/

echo "apache instalado com sucesso"
