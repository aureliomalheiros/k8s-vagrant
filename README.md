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

4. Agora vamos pegar a token do cluster

```console
host@host01:~$ sudo su
```

```console
host@host01:# cat kubernetes.log
```

Saida deve algo semelhante a imagem abaixo:

![kubernetes-01](https://user-images.githubusercontent.com/12739791/99885728-d0908680-2c15-11eb-83c9-3c66486432a6.png)

Você deve copiar a saida

5. Após copiar a saida, cole via linha de comando nos outros dois servidores (**host02** e **host03**)

Abaixo vamos mostrar um exemplo:

- Servidor: **host02**

```console
host@host02:~$ sudo su
```
Cole a saida, como mostra a imagem abaixo:

![kubernetes-02](https://user-images.githubusercontent.com/12739791/99885811-4d236500-2c16-11eb-90fd-61e33b0f1080.png)

- Servidor: **host03**

```console
host@host03:~$ sudo su
```
Cole a saida, como mostra a imagem abaixo:

![kubernetes-03](https://user-images.githubusercontent.com/12739791/99885821-5a405400-2c16-11eb-92d0-267d89a47eab.png)


6. Após isso aguarde até os servidores ficarem no estado de **ready**

```console
host@host01:# kubectl get nodes
```
![get-nodes-ready](https://user-images.githubusercontent.com/12739791/97642329-a4715380-1a23-11eb-96d5-b16cd367aa66.png)

> No primeiro momento pode aparecer no estado NotReady,
> porém é só aguardar até os serviços inicializarem

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