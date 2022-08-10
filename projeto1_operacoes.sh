echo "Apagando pastas..."

rm /Downloads -r -f
rm /Aula -r -f
rm /publica -r -f
rm /Textos -r -f
rm /mariana -r -f
rm /scripts -r -f
rm /ven -r -f
rm /adm -r -f

echo "Apagando usuarios..."

userdel -f daniel
userdel -f debora
userdel -f guest
userdel -f guest10
userdel -f guest11
userdel -f guest12
userdel -f guest13
userdel -f joao
userdel -f maisa
userdel -f mariana
userdel -f rodrigo

echo "Apagando Grupos..."

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Apagando pastas..."

rm /publico -r -f
rm /adm -r -f
rm /ven -r -f
rm /sec -r -f

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd carlos -c "Carlos" -m -s /bin/bash
useradd maria -c "Maria" -m -s /bin/bash
useradd joao -c "Joao" -m -s /bin/bash
useradd debora -c "Debora" -m -s /bin/bash
useradd sebastiana -c "Sebastiana" -m -s /bin/bash
useradd roberto -c "Roberto" -m -s /bin/bash
useradd josefina -c "Josefina" -m -s /bin/bash
useradd amanda -c "Amanda" -m -s /bin/bash
useradd rogerio -c "Rogerio" -m -s /bin/bash

echo "Adicionando usuarios aos grupos..."

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda 
usermod -G GRP_SEC rogerio

echo "Alterando as permissoes das pastas..."

chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Alterando os grupos das pastas"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

echo "Completo"
