#!/bin/bash

echo "criando os diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando os usuários"

useradd  carlos -m -c "Carlos" -s /bin/bash
useradd  maria -m -c "Maria" -s /bin/bash
useradd  joao -m -c "João" -s /bin/bash

useradd  debora -m -c "Débora" -s /bin/bash
useradd  sebastiana -m -c "Sebastiana" -s /bin/bash
useradd  roberto -m -c "Roberto" -s /bin/bash

useradd  josefina -m -c "Josefina" -s /bin/bash
useradd  amanda -m -c "Amanda" -s /bin/bash
useradd  rogerio -m -c "Rogério" -s /bin/bash

echo "----------------------------------------------------"
echo "ATENÇÃO!!! ao criar os usuários o -p $(openssl passwd -crypt xxxxxxx) não funcionou,"
echo "então inseri a senha de cada usuário manualmente."
echo "----------------------------------------------------"
echo ""
echo "inserindo a senha dos usuários"

echo "senha carlos "
passwd carlos

echo "senha maria"
passwd maria

echo "senha joao"
passwd joao

echo "senha debora"
passwd debora

echo "senha sebastiana"
passwd sebastiana

echo "senha roberto"
passwd roberto

echo "senha josefina"
passwd josefina

echo "senha amanda"
passwd amanda

echo "senha rogerio"
passwd rogerio

echo "----------------------------------------------------"

echo "inserindo os usuários do grupo GRP_ADM"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

echo "inserindo os usuários do grupo GRP_VEN"

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

echo "inserindo os usuários do grupo GRP_SEC"

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "mudando os donos dos grupos"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "alterando as permissões de usuários e grupos"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "100% concluido..."
