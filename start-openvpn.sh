!/bin/bash
echo "***************************************************"
	echo "Autor......: Sergio Nunes da Silva"
	echo "Empresa....: Vetor Soluções"
	echo "Setor......: T.I. - Infraestrutura"
	echo "Finalidade.: Inicir o Serviço da VPN"
	echo "Dt.Criação.: 02/12/2019"
echo "***************************************************"
openvpn --config /etc/openvpn/sergio.mac-config.conf &
sleep 3
sudo /etc/init.d/itec-appserver start
sleep 3
sudo /etc/init.d/postgresql start 
sleep 20