#!/bin/bash

echo "Iniciando configuracao"

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretorios criados!"

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados!"

echo "Criando usuarios do sistema..." 

useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria Costa" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João Nascimento" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Debora Lopes" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Araujo" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina França" -m -s /bin/bash -p $(openssl passwd -1 Senha123)  -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC 
passwd amanda -e

useradd rogerio -c "Rogerio Pessoa" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd rogerio -e

echo "Usuarios criados!"

echo "Configurando permissoes dos diretorios..."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissoes configuradas!"

echo "Configuraçao completa!"


