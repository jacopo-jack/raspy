#!/bin/bash
#update
sudo apt-get update
#delboating
#install apache2
sudo apt-get install apache2
#copy dash folder into /var/www/html
#replace pi with your username (whoami) before launch this script
SOURCE="/home/pi/Desktop/dash"
DEST="/var/www/html"
sudo cp -r "$SOURCE" "$DEST"