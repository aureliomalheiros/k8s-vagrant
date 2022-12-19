#!/bin/bash

echo "-----------------------"
echo "INICIALIZANDO O CLUSTER"
echo "-----------------------"

echo "[TASK 01] Download do Pull das imagens"

sudo kubeadm config images pull 

echo "[TASK 02] Iniciliando o Cluster"

sudo kubeadm init --apiserver-advertise-address=192.168.57.10 --pod-network-cidr=172.10.0.0/16 

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml

sudo kubeadm token create --print-join-command > /home/vagrant/kubernetes.conf
