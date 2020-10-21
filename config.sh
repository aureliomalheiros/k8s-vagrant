#!/bin/bash

echo "[TASK 01] Instalação do Docker"

sudo curl -fsSl https://get.docker.com | bash

echo "[TASK 02] Alteração do cgroup do Docker"

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

echo "[TASK 03] Criação da estrutura de drivers"

sudo mkdir -p /etc/systemd/system/docker.service.d

echo "[TASK 04] Reinicialização do docker"

sudo systemctl daemon-reload
sudo systemctl restart docker

echo "[TASK 05] Adicionando a chave do repositório do kubernetes"

sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

echo "[TASK 06] Adicionando o repositório do Kubernetes"

sudo echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list

echo "[TASK 07] Atualização dos repositórios"

sudo apt-get update

echo "[TASK 08] Instalação de pacotes"

sudo apt-get install -y kubeadm kubelet kubectl

echo "[TASK 09] Verificação dos módulos"

sudo modprobe br_netfilter ip_vs_rr ip_vs_wrr ip_vs_sh nf_conntrack_ipv4 ip_vs

