#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd mateus -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd silva -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd elisa -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd fabio -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd rafaela -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN

useradd amanda -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd jose -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC

echo "Dando permssoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Processo finalizado..."

