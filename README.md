# Ambiente de estudos Kubernetes

### Descrição do Projeto
> Projeto é voltado, para criação de um ambiente de estudos do Kubernetes,
> sem que seja necessário a instalação manual, ou seja, de forma automatizada.

### Pré-requisitos
- Virtual Box
- Vagrant
- 2 CPUS ou mais
- 6GB de memória RAM
- 10GB livre de disco

### ✨ Explicação do projeto
1. Instalação do Docker
2. Alteração do Cgroup para Systemd e criação da estrutura de drivers
3. Instalação do Kubernetes
4. Download do Pull de imagens no _Master_
5. Instalação do Pod Network (Weave)

### Execução

1. Clone o projeto para sua máquina
2. Acesse a pasta **kubernetes-vagrant** e digite o comando abaixo:

```console
host$host:~$ vagrant up
```

3. Depois acesse o servidor _host01_
```console
host$host:~$ vagrant ssh host01
```
4. Agora vamos pegar a token do cluster

```console
host@host01:~$sudo su
```
```console
host@host01:# cat /tmp/kubernetes.log

```
Saida deve algo semelhante a imagem abaixo:

![kubernetes](https://user-images.githubusercontent.com/12739791/97629293-aaa80580-1a0c-11eb-9f7e-0b0d3a459912.png)

5. copie a saida e cole via linha de comando nos outros dois servidores (_host02_ e _host03_)

Abaixo vamos mostrar um exemplo:


6. Após isso aguarde até os servidores ficarem no estado de **ready**

```console
host@host01:# kubectl get nodes
```

### 🛠 Tecnologias

![ShellScript](https://img.shields.io/badge/-ShellScript-000000?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Docker](https://img.shields.io/badge/-Docker-181717?style=for-the-badge&logo=docker)
![Kubernetes](https://img.shields.io/badge/-Kubernetes-181717?style=for-the-badge&logo=kubernetes)
![VirtualBox](https://img.shields.io/badge/-VirtualBox-181717?style=for-the-badge&logo=virtualbox)
![Vagrant](https://img.shields.io/badge/-Vagrant-181717?style=for-the-badge&logo=vagrant)
