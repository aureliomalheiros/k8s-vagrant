#!/bin/bash

echo "-----------------------"
echo "-----ARQUIVO HOSTS-----"
echo "-----------------------"


echo "[TASK 01] Atualização do arquivo /etc/hosts"

sed -i "s/^127.*/192.168.57.12 knode03 localhost/g" /etc/hosts

echo "[TASK 02] Configurando a chave"

sshpass -p "vagrant" scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no vagrant@knode01:/home/vagrant/kubernetes.sh /home/vagrant/kubernetes.sh > /dev/null 2>&1
bash /home/vagrant/kubernetes.sh > /dev/null 2>&1
