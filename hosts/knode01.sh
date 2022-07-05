#!/bin/bash

echo "-----------------------"
echo "-----ARQUIVO HOSTS-----"
echo "-----------------------"

echo TASK [01] "Atualização do arquivo /etc/hosts"

sed -i "s/^127.*/192.168.57.10 knode01 localhost/g" /etc/hosts
