#!/bin/bash

# Criando diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criando grupos de usuários
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Especificando permissões dos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

# Criando usuários

# adm
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt tmpPass) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt tmpPass) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt tmpPass) -G GRP_ADM
# ven 
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt tmpPass) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt tmpPass) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt tmpPass) -G GRP_VEN
# sec
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt tmpPass) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt tmpPass) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt tmpPass) -G GRP_SEC
