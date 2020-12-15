#!/bin/bash

echo "[TASK 01] Atualização dos /etc/hosts"

cat >>/etc/hosts<<EOF
192.168.33.10 host01
192.168.33.11 host02
192.168.33.12 host03
EOF

echo "[TASK 02] Instalação do Docker"

sudo curl -fsSl https://get.docker.com | bash > /dev/null 2>&1

echo "[TASK 03] Alteração do cgroup do Docker"

sudo cat > /etc/docker/daemon.json << EOF

{
	"exec-opts": ["native.cgroupdriver=systemd"],
	"log-driver": "json-file",
	"log-opts": {
		"max-size": "100m"
	},
	"storage-driver": "overlay2"
}

EOF

echo "[TASK 04] Criação da estrutura de drivers"

sudo mkdir -p /etc/systemd/system/docker.service.d

echo "[TASK 05] Reinicialização do docker"

sudo systemctl daemon-reload
sudo systemctl restart docker

echo "[TASK 06] Adicionando a chave do repositório do kubernetes"

sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - >/dev/null 2>&1

echo "[TASK 07] Adicionando o repositório do Kubernetes"

sudo echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list

echo "[TASK 08] Atualização dos repositórios"

sudo apt-get update > /dev/null 2>&1

echo "[TASK 09] Instalação de pacotes - kubeadm - kubelet kubectl"

sudo apt-get install -y kubeadm=1.19.5-00 kubelet=1.19.5-00 kubectl=1.19.5-00 > /dev/null 2>&1

echo "[TASK 10] Desabilitando firewall"

sudo systemctl disable ufw > /dev/null 2>&1
sudo systemctl stop ufw > /dev/null 2>&1

echo "[TASK 11] Desabilitando Swap"

sed -i '/swap/d' /etc/fstab
swapoff -a

echo "[TASK 12] Adicionando configurações no sysctl"

cat >>/etc/sysctl.d/kubernetes.conf<<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF

echo "[TASK 13]Configurando o ssh"

sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl reload sshd

echo "[TASK 14] Instalação do sshpass"

sudo apt install -q -y sshpass > /dev/null 2>&1
