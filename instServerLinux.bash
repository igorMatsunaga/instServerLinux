#!/bin/bash

clear
echo "Instalacao  DHCP, DNS, FTP, SSH"
echo "Digite 1(Debian) 2(Ubuntu) 3(Kali_Linux)"
read opc
if [ $opc -eq 1 ];
then

	su apt-get update && su apt-upgrade
	su apt-get install isc-dhcp-server
	service isc-dhcp-server start
	su apt-get install isc-dhcp-client
	su apt-get install dnsutils
	su apt-get install ftp
	su apt-get install vsftpd
	service vsftpd start
	su apt-get install openssh-server
	mkdir /etc/ssh/default_key
	mv /etc/ssh/ssh_host_* /etc/ssh/default_keys
	systemctl start ssh.socket
	systemctl start ssh.service

echo "Instalacao completa"
	
elif [ $opc -eq 2 ];
then
	
	sudo apt-get update && sudo apt-upgrade
	sudo apt-get install isc-dhcp-server
	service isc-dhcp-server start
	sudo apt-get install isc-dhcp-client
	sudo apt-get install dnsutils
	sudo apt-get install ftp
	sudo apt-get install vsftpd
	service vsftpd start
	sudo apt-get install openssh-server
	mkdir /etc/ssh/default_key
	mv /etc/ssh/ssh_host_* /etc/ssh/default_keys
	systemctl start ssh.socket
	systemctl start ssh.service
	
echo "Instalacao completa"
	
else

	 apt-get update && apt-upgrade
	 apt-get install isc-dhcp-server
	 service isc-dhcp-server start
	 apt-get install isc-dhcp-client
	 apt-get install dnsutils
	 apt-get install ftp
	 apt-get install vsftpd
	 service vsftpd start
	 apt-get install openssh-server
	 mkdir /etc/ssh/default_key
	 mv /etc/ssh/ssh_host_* /etc/ssh/default_keys
	 systemctl start ssh.socket
	 systemctl start ssh.service

echo "Instalacao completa"
fi	