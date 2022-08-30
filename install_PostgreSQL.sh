#!/bin/bash

echo 'Atualizando o sistema...'
apt-get update -y
apt-get upgrade -y
echo ''

echo 'Instalando...'
apt-get install postgresql-14
apt-get install postgresql-client-14
echo ''

echo 'Verificando status...'
systemctl status postgresql.service
echo ''

echo 'Atualizando o sistema de novo...'
apt-get update -y
apt-get upgrade -y
echo ''

echo 'Inicializando...'
reboot

