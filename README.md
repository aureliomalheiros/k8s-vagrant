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
2. Acesse a pasta e digite o comando abaixo:

```sh
$ vagrant up
```

3. Depois acesse o servidor _host01_
```sh
$ vagrant ssh host01
```
4. Agora vamos pegar a token do cluster
```console
host@host01:~$sudo su
host@host01:# cat /tmp/kubernetes.log
```
5. copie a saida e cole nos outros dois servidores (_host02_ e _host03_)
```sh
# cat /tmp/kubernetes.log
```


### 🛠 Tecnologias

![ShellScript](https://img.shields.io/badge/-ShellScript-000000?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Docker](https://img.shields.io/badge/-Docker-181717?style=for-the-badge&logo=docker)
![Kubernetes](https://img.shields.io/badge/-Kubernetes-181717?style=for-the-badge&logo=kubernetes)
![VirtualBox](https://img.shields.io/badge/-VirtualBox-181717?style=for-the-badge&logo=virtualbox)
![Vagrant](https://img.shields.io/badge/-Vagrant-181717?style=for-the-badge&logo=vagrant)
