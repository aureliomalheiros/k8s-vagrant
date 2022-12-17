#!/bin/bash

echo "-----------------------"
echo "INICIALIZANDO O CLUSTER"
echo "-----------------------"

echo "[TASK 01] Download do Pull das imagens"

sudo kubeadm config images pull >/dev/null 2>&1

echo "[TASK 02] Iniciliando o Cluster"

sudo kubeadm init --apiserver-advertise-address=192.168.57.10 --pod-network-cidr=172.10.0.0/16 > /dev/null 2>&1

echo "[TASK 03] Criação do .kube para o usuário regular"

sudo mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

echo "[TASK 04] Criação do pod network"

sudo kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')" >/dev/null 2>&1

echo "[TASK 05] Salvando a chave"

sudo kubeadm token create --print-join-command > /home/vagrant/kubernetes.sh

echo "[TASK 06] Armazenando a chave"

kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}') > token-dashboard.log

