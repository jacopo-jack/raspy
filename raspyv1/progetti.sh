#!/bin/sh
#menu
BACKTITLE = "Progetti"
menu() {
    CHOICE=$(dialog --clear \
    --backtitle "$BACKTITLE" \
    --title "Main Menu" \
    --menu "Progetti: " 0 0 15 \
    1 "Sorveglianza" \
    2 "Web" \
    3 "Smartphone" \
    4 "Multimedia" \
    5 "Domotica" \
    6 "Menu" \
    7 "exit" \
    2>&1 > /dev/tty)

    case $CHOICE in
        1 ) Sorveglianza
            sorveglianza;;
        2 ) Web
            web;;
        3 ) Smartphone
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
#make a root folder called projects and a list
projects(){
    mkdir progetti
    ls -l 
}
#change directory and make sorveglianza root
sorveglianza(){
    cd progetti
    mkdir sorveglianza
    cd progetti
    mv sorveglianza.sh  raspy/progetti/sorveglianza #moving file to clean up
    ./sorveglianza.sh #and launch the sub menu
    ls -l
}
web(){
    cd progetti
    mkdir web
    cd progetti
    mv web.sh  raspy/progetti/web
    ./web.sh
    ls -l
}
smartphone(){
    cd progetti
    mkdir smartphone
    ls -l
}
multimedia(){
    cd progetti
    mkdir multimedia
    ls -l
}
multimedia(){
    cd progetti
    mkdir multimedia
    ls -l
}
#this function call is like a main. Creates a root folder called progetti
#in raspy
projects