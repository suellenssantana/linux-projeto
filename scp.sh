#!/bin/bash

echo "criar diretorios"

mkdir /adm
mkdir /publico
mkdir /sec
mkdir /ven

echo "criar grupos"

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "criar usuarios"
useradd carlos -m -s /bin/bash -p senha123 -G GRP_ADM
useradd joao -m -s /bin/bash -p senha123 -G GRP_ADM
useradd maria -m -s /bin/bash -p senha123 -G GRP_ADM

useradd amanda -m -s /bin/bash -p senha123 -G GRP_SEC
useradd josefina -m -s /bin/bash -p senha123 -G GRP_SEC
useradd rogerio -m -s /bin/bash -p senha123 -G GRP_SEC

useradd  -m -s /bin/bash -p senha123 -G GRP_VEN
useradd -m -s /bin/bash -p senha123 -G GRP_VEN
useradd -m -s /bin/bash -p senha123 -G GRP_VEN

echo "definir permissoes"

chown root:GRP_ADM
chown root:GRP_SEC
chown root:GRP_VEN

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publico


echo "Fim ..."
