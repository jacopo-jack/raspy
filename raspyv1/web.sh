#!/bin/sh
#menu
BACKTITLE = "Web"
menu() {
    CHOICE=$(dialog --clear \
    --backtitle "$BACKTITLE" \
    --title "Web" \
    --menu "Progetti: " 0 0 15 \
    1 "Firewall" \
    2 "Wi-fi" \
    3 "Server_stampa" \
    4 "XMPP" \
    5 "Deluge" \
    6 "Laravel" \
    7 "Enby" \
    8 "Menu" \
    9 "exit" \
    2>&1 > /dev/tty)

    case $CHOICE in
        1 ) Firewall
            web;;
        2 ) Wi-fi
            web;;
        3 ) Server_stampa
            web;;
        4 ) XMPP
            web;;
        5 ) Deluge
            web;;
        6 ) Laravel
            web;;
        7 ) Enby
            web ;;
        8 ) Menu
            ./menu.sh;;
        9 ) exit
            exit 0;; 
    esac
}
#only a function for the web and some .desktop files or other
web(){
    cd progetti
    cd web
    mkdir uwf
    cd progetti
    cd web
    mkdir wi-fi 
    cd progetti
    cd web
    cd progetti
    mkdir xmpp
    cd progetti 
    mkdir Deluge
    cd progetti
    mkdir Laravel
    cd progetti
    mkdir Enby
    ls -l
}
