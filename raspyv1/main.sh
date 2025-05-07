#!/bin/sh
# menu with dialog command
#title 
BACKTITLE = "Main Menu"
menu() {
    CHOICE=$(dialog --clear \
    --backtitle "$BACKTITLE" \
    --title "Main Menu" \
    --menu "Menu: " 0 0 15 \
    1 "Progetti" \
    2 "Retrogaming" \
    3 "exit" \
    2>&1 > /dev/tty)

    case $CHOICE in
        1 ) Progetti
            ./progetti.sh;;
        2 ) Retrogaming
            ./retrogaming.sh;;
        3 ) exit
            exit 0;;
    esac
}
menu 