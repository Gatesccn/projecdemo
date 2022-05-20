#!/bin/bash

tput setaf 7 ; tput setab 4 ; tput bold ; printf '%50s%s%-20s\n' "BadVPN, created By Mr.Devim" ; tput sgr0
if [ -f "/usr/local/bin/badvpn-udpgw" ]
then
	tput setaf 3 ; tput bold ; echo ""
	echo ""
	echo "BadVPN YA FUE INSTALADO CON EXITO."
	echo "Para ejecutar, cree una sesión de pantalla"
	echo "E execute o comando:"
	echo ""
	echo "badudp"
	echo ""
	echo "Y deja la sesión de pantalla ejecutándose en segundo plano.."
	echo "" ; tput sgr0
	exit
else
tput setaf 2 ; tput bold ; echo ""
echo -e "\033[1;36mEste es un script que compila e instala automáticamente el programa BadVPN en servidores Debian y Ubuntu para habilitar el reenvío UDP en el puerto 7300, utilizado por programas como HTTP Injector de Evozi. Permitiendo así el uso del protocolo UDP para juegos online, llamadas VoIP y otras cosas interesantes.\033[0m"
echo "" ; tput sgr0
read -p "DESEA continuar? [s/n]: " -e -i n resposta
if [[ "$resposta" = 's' ]]; then
	echo ""
	echo -e "\033[1;31mA la instalación puede llevar mucho tiempo... sea paciente!\033[0m"
	sleep 3
	apt-get update -y
	apt-get install screen wget gcc build-essential g++ make -y
	wget http://www.cmake.org/files/v2.8/cmake-2.8.12.tar.gz
	tar xvzf cmake*.tar.gz
	cd cmake*
	./bootstrap --prefix=/usr
	make 
	make install
	cd ..
	rm -r cmake*
	mkdir badvpn-build
	cd badvpn-build
	wget https://github.com/ambrop72/badvpn/archive/refs/tags/1.999.130.tar.gz
	tar xf 1.999.130.tar.gz
	cd bad*
	cmake -DBUILD_NOTHING_BY_DEFAULT=1 -DBUILD_UDPGW=1
	make install
	cd ..
	rm -r bad*
	cd ..
	rm -r badvpn-build
    chmod +x badvpn.sh
    ./badvpn.sh
	echo "#!/bin/bash
	badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 512 --max-connections-for-client 8" > /bin/badudp
	chmod +x /bin/badudp
	clear
	tput setaf 3 ; tput bold ; echo ""
	echo ""
	echo -e "\033[1;36mBadVPN instalado con éxito. Para usar, cree una sesión de pantalla y ejecute el comando badudp y deje la sesión de pantalla ejecutándose en segundo plano.\033[0m"
	echo "" ; tput sgr0
	exit
else 
	echo ""
	exit
fi
fi
