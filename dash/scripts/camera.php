<?php
if($_POST['submit'] =="sinistra"){
    echo shell_exec("sudo python /var/wwww/html/script/motore_passo.py sinistra 2>&1");
    echo "<pre>$output</pre>";
}
if($_POST['submit'] =="destra");{
    echo shell_exec("sudo python /var/wwww/html/script/motore_passo.py destra 2>&1");
    echo "<pre>$output</pre>";
}
?>