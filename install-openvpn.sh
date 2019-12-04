#!/bin/bash
echo "***************************************************"
	echo "Distribuição Ubuntu 16.04"
	echo "Empresa....: Vetor Soluções"
	echo "Setor......: T.I. - Infraestrutura"
	echo "Finalidade.: Instalacao do Openvpn "
	echo "Dt. Criação.: 03/12/2019"
	echo "Dt. ultima Alteração.: 03/12/2019"
#====================================================================================
echo "***************************************************"
echo "****Removendo a instalação existente****"
sleep 5
apt-get remove openvpn* -y
sleep 5
apt-get purge openvpn* -y
sleep 5
apt-get autoremove openvpn* -y
sleep 3
apt-get update && apt-get -y upgrade 
sleep 10
#==================================================================================================================================
echo "****Atualizando o repositorio e Instalando a Versão mais Recente****"
sleep 5
apt-get install curl
sleep 5
curl -s https://swupdate.openvpn.net/repos/repo-public.gpg | apt-key add
sleep 5
echo "deb http://build.openvpn.net/debian/openvpn/stable xenial main" > /etc/apt/sources.list.d/openvpn-aptrepo.list
sleep 3
apt-get update && apt-get -y upgrade
sleep 10
apt-get install openvpn -y
sleep 3
cd /etc/openvpn
chmod 755 *.*
sleep 3
cp start-openvpn.sh /etc/init.d
sleep 3
cd /etc/init.d
sleep 3
chmod 755 start-openvpn.sh
sleep 3
update-rc.d start-openvpn.sh defaults
sleep 5
reboot
sleep 5
ping 10.101.1.8
echo '******************************************'
echo    'Instalação Finalizada com sucesso!'
echo '******************************************'
clear
