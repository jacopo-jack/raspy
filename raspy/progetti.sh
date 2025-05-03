#!/bin/sh
# folders not avaiables
       sudo apt-get install apache2
       sudo apt-get install php5
       sudo apt-get update
# projects folder
	mkdir progetti
	cd progetti
	ls
	ls -l
# projects area (convert every stack of commands into functions)
        echo  changes permissions to index.php to visualize the web site
        echo  cambia permessi a index.php per visualizzare il sito
	cd progetti
	mkdir sorveglianza
	nano index.php
	cp index.php sorveglianza
        cp motore_passo.py sorveglianza
        cp ./Desktop/sorveglianza /var/www/html/
        sudo chmod -R 777/var/wwww/html/
        ls -l
#copy projects
	cd progetti
     	mkdir unicorn
        