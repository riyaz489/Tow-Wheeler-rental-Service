<?php

define("HOSTNAME","localhost");
define("USERNAME","riyaz");
define("PASSWORD","riyaz");
define("DBNAME","rent");

$con=mysqli_connect(HOSTNAME,USERNAME,PASSWORD,DBNAME) or die("cannot connect to database");


?>
