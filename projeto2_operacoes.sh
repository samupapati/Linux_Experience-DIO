echo "Instalando pacotes..."

apt install apache2 -y
apt install unzip -y

echo "Configurando servicos"

systemctl start apache2

echo "Baixando aplicacoes..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp * /var/www/html/ -rf

echo "Completo"


