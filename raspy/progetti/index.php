<!doctype html>
<html lang ="it">
  <head>
    <ttitle>Camera RPI-X</title>
   </head>
   <body>
     <h1>CAMERA RPI-X</h1>
       <img src="http://IP:127.0.0.1/?action=stream"
            width="800" height="460"/>
        <br><br>
         <form action="index.php" method="post">
         <input type="submit" name="submit" value="sinistra">   
         <input type="submit" name="submit" value="destra">
  </body>
</htm>
<?php
    if($_post["submit"]=="sinistra"){
	echo shell_exec("sudo python /var/www/html/
			 motore_passo.py sinistra 2>&1");
        echo "<pre>$output</pre>";
}
	if($_post["submit"]=="destra"){
            echo shell_exec("sudo python /var/www/html
                             motore_passo.py destra 2&1");
            echo "<pre>$output</pre>";
}

