#!/bin/bash

echo "[TASK 01] Basico configs - KNODE01, KNODE02 and KNODE03"

cat >>/etc/hosts<<EOF
192.168.57.10 knode01
192.168.57.11 knode02
192.168.57.12 knode03
EOF

sudo systemctl disable ufw > /dev/null 2>&1
sudo systemctl stop ufw > /dev/null 2>&1

cat >>/etc/sysctl.d/kubernetes.conf<<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF


#sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
#systemctl reload sshd

#sudo apt install -q -y sshpass > /dev/null 2>&1
