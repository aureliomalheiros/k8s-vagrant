#!/bin/bash

echo "[TASK 1] Configuration CRI"

sudo apt update > /dev/null 2>&1

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release > /dev/null 2>&1

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update > /dev/null 2>&1

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y > /dev/null 2>&1

echo "--------------------"
echo "--------------------"
echo "CONFIGURATION CGROUP"
echo "--------------------"
echo "--------------------"

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

sudo mkdir -p /etc/systemd/system/docker.service.d

sudo systemctl daemon-reload
sudo systemctl restart docker
