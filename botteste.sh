#!/bin/bash
[[ $(screen -list| grep -c 'bot_teste') == '0' ]] && {
    clear
    echo -e "\E[44;1;37m     PRUEBA DE ACTIVACIÓN BOT SSH     \E[0m"
    echo ""
    echo -ne "\n\033[1;32mINFORME DE TOKEN\033[1;37m: "
    read token
    clear
    echo "-----------Scripts de Ventas SSH GATESCCN-----------"
    echo "=×=×=×=×=×=×=×=×=×=×=×=×=×="
    echo "   BIENVENIDO Y GRACIAS POR CONFIAR Y USAR NUESTRO SCRIPTS   "
    echo "=×=×=×=×=×=×=×=×=×=×=×=×=×="
    echo "        SI TIENES ALGUN INCONVENIENTE CONTACTEME @GATESCCN 62069439        "
    echo ""
    echo -ne "\033[1;32mScripts de Ventas SSH GATESCCN:\033[1;37m "
    read bvindo
    echo -ne "\033[1;32mBIENVENIDO Y GRACIAS POR CONFIAR Y USAR NUESTRO SCRIPTS:\033[1;37m "
    read mfinal
    clear
    echo -ne "\033[1;GENERADOR DE SSH:\033[1;37m "
    read bt1
    clear
    echo -ne "\033[1;32mCONTACTO :\033[1;37m "
    read bt2
    echo -ne "\033[1;32mCONTACTO TELEGRAM:\033[1;37m "
    read https://t.me/GATESCCN
    clear
    echo -ne "\033[1;32mGRUPO:\033[1;37m "
    read bt3
    echo -ne "\033[1;32mGRUPO TELEGRAM:\033[1;37m "
    read https://t.me/DESENCRIPTADORESHC
    clear
    echo -ne "\033[1;32mDURACIÓN DE LA PRUEBA(EN HORAS):\033[1;37m "
    read 2
    clear
    echo ""
    echo -e "\033[1;32mINICIANDO BOT TESTE \033[0m\n"
    cd $HOME/BOT
    rm -rf $HOME/BOT/botssh
    wget https://www.dropbox.com/s/mp2nqtv3j1m3wmf/botssh >/dev/null 2>&1
    chmod 777 botssh
    echo ""
    sleep 1
    sed -i "s/!#bvindo#!/$bvindo/g" $HOME/BOT/botssh >/dev/null 2>&1
    sed -i "s/!#mfinal#!/$mfinal/g" $HOME/BOT/botssh >/dev/null 2>&1
    sed -i "s/!#bt1#!/$bt1/g" $HOME/BOT/botssh >/dev/null 2>&1
    sed -i "s/!#bt2#!/$bt2/g" $HOME/BOT/botssh >/dev/null 2>&1
    sed -i "s/!#link2#!/$link2/g" $HOME/BOT/botssh >/dev/null 2>&1
    sed -i "s/!#bt3#!/$bt3/g" $HOME/BOT/botssh >/dev/null 2>&1
    sed -i "s/!#link3#!/$link3/g" $HOME/BOT/botssh >/dev/null 2>&1
    sed -i "s/!#dtempo#!/$dtempo/g" $HOME/BOT/botssh >/dev/null 2>&1
    sleep 1
    screen -dmS bot_teste ./botssh $token > /dev/null 2>&1
    clear
    echo "BOT ATIVADO"
    menu
} || {
    screen -r -S "bot_teste" -X quit
    clear
    echo "BOT DESATIVADO"
    menu
}