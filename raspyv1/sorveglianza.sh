#!/bin/sh
#menu
BACKTITLE = "Sorveglianza"
menu() {
    CHOICE=$(dialog --clear \
    --backtitle "$BACKTITLE" \
    --title "Sorveglianza" \
    --menu "Progetti: " 0 0 15 \
    1 "Videosorveglianza" \
    2 "Sicurezza_smartphone" \
    3 "Web" \
    4 "Multimedia" \
    5 "Domotica" \
    6 "Menu" \
    7 "exit" \
    2>&1 > /dev/tty)

    case $CHOICE in
        1 ) Videosorveglianza
            sorveglianza;;
        2 ) Sicurezza_smartphone
            smartphone;;
        3 ) web
            smartphone;;
        4 ) Multimedia
            multimedia;;
        5 ) Domotica
            domotica;;
        6 ) Menu 
            ./main.sh;;
        7 ) exit
            exit 0;;
    esac
}
sorveglianza(){
    cd progetti
    cd sorveglianza
    mkdir video
    ls -l
}
smartphone(){
    cd progetti
    cd sorveglianza
    mkdir smartphone
    ls -l
}