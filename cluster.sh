#!/bin/bash

echo "-----------------------"
echo "INICIALIZANDO O CLUSTER"
echo "-----------------------"

echo "[TASK 01] Download do Pull das imagens"

sudo kubeadm config images pull

echo "[TASK 02] Iniciliando o Cluster"

sudo kubeadm init --apiserver-advertise-address=192.168.33.10 --pod-network-cidr=172.10.0.0/16

echo "[TASK 03] Criação do .kube para o usuário regular"

sudo mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

echo "[TASK 04] Criação do pod network"

sudo kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"

echo "[TASK 05] Salvando a chave"

sudo kubeadm token create --print-join-command >> /tmp/kubenertes.log
