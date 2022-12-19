#!/bin/bash

echo "[TASK 3] Install kubeadm, kubelet and kubectl"

sudo apt update > /dev/null 2>&1

sudo apt-get install -y apt-transport-https ca-certificates curl > /dev/null 2>&1

sudo curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg > /dev/null 2>&1

echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list > /dev/null 2>&1

sudo apt-get update > /dev/null 2>&1

sudo apt-get install -y kubeadm=1.23.15-00 kubelet=1.23.15-00 kubectl=1.23.15-00 > /dev/null 2>&1

sudo apt-mark hold kubeadm=1.23.15-00 kubectl=1.23.15-00 kubelet=1.23.15-00 > /dev/null 2>&1
