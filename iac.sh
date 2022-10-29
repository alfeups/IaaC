#!/bin/bash

echo "Criando diretórios... "

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos... "

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários... "

useradd carlos -c "comentario " -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "comentario " -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_ADM
useradd joao -c "comentario " -m -s /bin/bash -p $(openssl passwd -crypt Senha123)   -G GRP_ADM

useradd debora -c "comentario " -m -s /bin/bash -p $(openssl passwd -crypt Senha123)     -G GRP_VEN
useradd sebastiana -c "comentario " -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "comentario " -m -s /bin/bash -p $(openssl passwd -crypt Senha123)    -G GRP_VEN

useradd josefina -c "comentario " -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "comentario " -m -s /bin/bash -p $(openssl passwd -crypt Senha123)   -G GRP_SEC
useradd rogerio -c "comentario " -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_SEC


echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
