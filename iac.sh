#!/bin/bash
echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários........"

useradd Claudiomiro -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_ADM
useradd Cristal -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G  GRP_ADM

useradd Gabi -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_SEC
useradd Maria -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_VEN

useradd Jose -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_VEN
useradd Mag -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_SEC

useradd Carol -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_SEC
useradd Pietra -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_VEN
useradd Rosa -m -s /bin/bash -p $(openssl passwd -crypt Senha12345) -G GRP_ADM


echo "Criando aos permissões dos diretórios........."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chown 770 /adm
chown 770 /ven
chown 770 /sec
chown 777 /publico

echo " Processo finalizado............"

