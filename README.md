# Environment Kubernetes

## Describe

> Project:
- Create environment Kubernetes;
- Automatically create cluster;
- Cluster Local (Your machine).

### Requirements

- Virtual Box
- Vagrant
- 2 CPUs ou mais
- 6 GB memory RAM
- 10 GB Disk

### ✨ Project explanation

1. Install Docker
2. Configuration Cgroup and create structure drivers
3. Install Kubernetes
4. Pull images in the __Master__
5. Install Pod Network (Weave)


#### 🚀 Running


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

#### Metrics

In the [folder metrics](metrics-server) there are some file yamls to using monitoring logs, memory and CPU.

```bash
kubectl apply -f metrics-server/
```

#### 🛠 Tecnologies

![ShellScript](https://img.shields.io/badge/-ShellScript-181717?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Docker](https://img.shields.io/badge/-Docker-181717?style=for-the-badge&logo=docker)
![Kubernetes](https://img.shields.io/badge/-Kubernetes-181717?style=for-the-badge&logo=kubernetes)
![VirtualBox](https://img.shields.io/badge/-VirtualBox-181717?style=for-the-badge&logo=virtualbox)
![Vagrant](https://img.shields.io/badge/-Vagrant-181717?style=for-the-badge&logo=vagrant)


#### **:books: REFERENCE**

- [Vagrant](https://www.vagrantup.com/docs)
- [Kubernetes](https://kubernetes.io/pt/docs/home/)
- [Descomplicando Docker](https://github.com/badtuxx/DescomplicandoKubernetes)
- [Install Kubernetes](https://github.com/leoviana00/kubernetes-install)
