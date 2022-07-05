# Ambiente de estudos Kubernetes

### Descrição do Projeto

> Projeto é voltado, para criação de um ambiente de estudos do Kubernetes,
> sem que seja necessário a instalação manual, ou seja, de forma automatizada.


### Requirements

- Virtual Box
- Vagrant
- 2 CPUs ou mais
- 6 GB de memória RAM
- 10 GB livre de disco

### ✨ Project explanation

1. Install Docker
2. Configuration Cgroup and create structure drivers
3. Install Kubernetes
4. Pull images in the __Master__
5. Install Pod Network (Weave)


### 🚀 Execução


1. Git clone in your machine

```console
host@host:~$ git clone https://github.com/aureliomalheiros/kubernetes-vagrant.git
```

2. access the folder **kubernetes-vagrant** and write the comand following:

```console
host@host:~$ vagrant up
```

3. Finished install cluster Kubernetes access host master **knode01**

```console
host$host:~$ vagrant ssh knode01
```
```console
host$host:~$ sudo su
```

4. Wait for the state of the nodes to staty in **ready**
> Verify the state of the nodes in the **Master**

```console
host@host01:# kubectl get nodes
```

The output should be the same as below:

![kubernetes-pull-automate](https://user-images.githubusercontent.com/12739791/100385983-ee3d6180-3002-11eb-82c3-098a05fea135.png)



5. Administrator cluster in the local machine

Install `kubectl` in your machine.

[Guide install kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)

> Access `knode01` copy output of the file `/root/.kube/config`

![Copy output](img/copy-file.gif)

> The output will be placed in your machine file `~/.kube/config` 

### 🛠 Tecnologies

![ShellScript](https://img.shields.io/badge/-ShellScript-181717?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Docker](https://img.shields.io/badge/-Docker-181717?style=for-the-badge&logo=docker)
![Kubernetes](https://img.shields.io/badge/-Kubernetes-181717?style=for-the-badge&logo=kubernetes)
![VirtualBox](https://img.shields.io/badge/-VirtualBox-181717?style=for-the-badge&logo=virtualbox)
![Vagrant](https://img.shields.io/badge/-Vagrant-181717?style=for-the-badge&logo=vagrant)


### **:books: REFERENCE**

- [Vagrant](https://www.vagrantup.com/docs)
- [Kubernetes](https://kubernetes.io/pt/docs/home/)
- [Descomplicando Docker](https://github.com/badtuxx/DescomplicandoKubernetes)
- [Install Kubernetes](https://github.com/leoviana00/kubernetes-install)
