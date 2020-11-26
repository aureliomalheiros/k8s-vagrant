#!/bin/bash

echo "-----------------------"
echo "-----ARQUIVO HOSTS-----"
echo "-----------------------"

echo TASK [01] "Atualização do arquivo /etc/hosts"

sed -i "s/^127.*/192.168.33.10 host01 localhost/g" /etc/hosts
