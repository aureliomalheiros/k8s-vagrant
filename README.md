# Ambiente de estudos Kubernetes

### Descrição do Projeto

> Projeto é voltado, para criação de um ambiente de estudos do Kubernetes,
> sem que seja necessário a instalação manual, ou seja, de forma automatizada.


### Pré-requisitos

- Virtual Box
- Vagrant
- 2 CPUs ou mais
- 6 GB de memória RAM
- 10 GB livre de disco

### ✨ Explicação do projeto

1. Instalação do Docker
2. Alteração do Cgroup para Systemd e criação da estrutura de drivers
3. Instalação do Kubernetes
4. Download do Pull de imagens no _Master_
5. Instalação do Pod Network (Weave)


### 🚀 Execução


1. Clone o projeto para sua máquina

```console
host@host:~$ git clone https://github.com/aureliomalheiros/kubernetes-vagrant.git
```

2. Acesse a pasta **kubernetes-vagrant** e digite o comando abaixo:

```console
host@host:~$ vagrant up
```

3. Após finalizada as instalações acesse o servidor **host01**

```console
host$host:~$ vagrant ssh host01
```

4. Após isso aguarde até os servidores ficarem no estado de **ready**
> A verificação do estado dos nodes deve ser feito no **Master**
```console
host@host01:# kubectl get nodes
```

A saída deve ser igual a abaixo:

![kubernetes-pull-automate](https://user-images.githubusercontent.com/12739791/100385983-ee3d6180-3002-11eb-82c3-098a05fea135.png)

> No primeiro momento pode aparecer no estado NotReady,
> porém é só aguardar até os serviços inicializarem

5. Para o acesso via Dashboard faça os seguintes procedimentos:

Coloque o IP do Master no navegador:

http://192.168.33.10:30002/#/login

Vai aparecer uma tela solicitando o token para autenticação.

6. Acesse o host01
```console
host@host01:# cat token-dashboard.log
```
A saida será semelhante a abaixo:

![token-kubernetes](https://user-images.githubusercontent.com/12739791/100391247-9f4af880-3011-11eb-9870-0f5ded0c2782.png)

Copie o token e coloque na entrada do dashboard do Kubernetes

> Abaixo tem um gif para melhor entendimento:

![ezgif com-optimize](https://user-images.githubusercontent.com/12739791/100390956-c5bc6400-3010-11eb-853f-35670fe753bb.gif)

### 🛠 Tecnologias

![ShellScript](https://img.shields.io/badge/-ShellScript-000000?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Docker](https://img.shields.io/badge/-Docker-181717?style=for-the-badge&logo=docker)
![Kubernetes](https://img.shields.io/badge/-Kubernetes-181717?style=for-the-badge&logo=kubernetes)
![VirtualBox](https://img.shields.io/badge/-VirtualBox-181717?style=for-the-badge&logo=virtualbox)
![Vagrant](https://img.shields.io/badge/-Vagrant-181717?style=for-the-badge&logo=vagrant)


### **:books: REFERÊNCIAS**

- [Documentação Vagrant](https://www.vagrantup.com/docs)
- [Documentação Kubernetes](https://kubernetes.io/pt/docs/home/)
- [Descomplicando Docker](https://github.com/badtuxx/DescomplicandoKubernetes)
- [Instalção Kubernetes](https://github.com/leoviana00/kubernetes-install)