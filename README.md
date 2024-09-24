Laboratório - CI/CD: Com Jenkins, Nexus, Sonarqube e Gitea
=============================

Repositório para armazenar o Laboratório do curso de CI/CD com Jenkins, Nexus, Sonarqube e Gitea. [Tecpingu][1]


Dependências
------------

Para a criação do laboratório é necessário ter pré instalado os seguintes softwares:

* [Git][2]
* [VirtualBox][3]
* [Vagrant][4]

Laboratório
-----------

O Laboratório será criado utilizando o [Vagrant][5]. Ferramenta para criar e gerenciar ambientes virtualizados (baseado em Inúmeros providers) com foco em automação.

Nesse laboratórios, que está centralizado no arquivo Vagrantfile, serão criadas 4 maquinas com as seguintes características:

Nome       | vCPUs | Memoria RAM | IP            | S.O.¹           | Script de Provisionamento²
---------- |:-----:|:-----------:|:-------------:|:---------------:| -----------------------------
gandalf       | 1     | 512MB      | 192.168.56.10 | ubuntu-server-24.04 |  projects/gitea |
bilbo | 1     | 1024MB      | 192.168.56.11 | dubuntu-server-24.04 | projects/jenkins |
frodo    | 1     | 3048MB       | 192.168.56.12 | ubuntu-server-24.04 | projects/sonar-nexus |
gollum | 1 | 2048MB | 192.168.56.13 | ubuntu-server-24.04 | projects/k3s |

> **¹**: Esses Sistemas operacionais estão sendo utilizado no formato de Boxes, é a forma como o vagrant chama as imagens do sistema operacional utilizado.

> **²**: Para o Script de Provisionamento estamos utilizando Shell Script

Criação do Laboratório 
----------------------

Para criar o laboratório é necessário fazer o `git clone` desse repositório e, dentro da pasta baixada realizar a execução do `vagrant up`, conforme abaixo:

```bash
git clone git@github.com:jogilinux/vagrant-cicd-lives.git
cd vagrant-cicd-lives/
vagrant up
```

_O Laboratório **pode demorar**, dependendo da conexão de internet e poder computacional, para ficar totalmente preparado._

> **Atenção** Para máquinas físicas com apenas 8GB de RAM recomendamos ligar apenas duas máquinas por vez.

> Em caso de erro na criação das máquinas sempre valide se sua conexão está boa, os logs de erros na tela e, se necessário, o arquivo **/var/log/vagrant_provision.log** dentro da máquina que apresentou a falha.

Por fim, para melhor utilização, abaixo há alguns comandos básicos do vagrant para gerencia das máquinas virtuais.

Comandos                | Descrição
:----------------------:| ---------------------------------------
`vagrant init`          | Gera o VagrantFile
`vagrant box add <box>` | Baixar imagem do sistema
`vagrant box status`    | Verificar o status dos boxes criados
`vagrant up`            | Cria/Liga as VMs baseado no VagrantFile
`vagrant provision`     | Provisiona mudanças logicas nas VMs
`vagrant status`        | Verifica se VM estão ativas ou não.
`vagrant ssh <vm>`      | Acessa a VM
`vagrant ssh <vm> -c <comando>` | Executa comando via ssh
`vagrant reload <vm>`   | Reinicia a VM
`vagrant halt`          | Desliga as VMs

> Para maiores informações acesse a [Documentação do Vagrant][6]

[1]: https://www.twitch.tv/tecpingu
[2]: https://git-scm.com/downloads
[3]: https://www.virtualbox.org/wiki/Downloads
[4]: https://www.vagrantup.com/downloads
[5]: https://www.vagrantup.com/
[6]: https://www.vagrantup.com/docs
