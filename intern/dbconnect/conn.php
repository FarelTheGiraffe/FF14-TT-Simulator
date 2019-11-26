<?php
date_default_timezone_set ("Europe/Berlin");

// ** MySQL Settings ** //
$server='??.??.??.??';
$database='???';
$pw='???';
$user='???';

$link = mysqli_connect($server, $user, $pw, $database);

$link = new mysqli($server,$user,$pw,$database);
if(!$link)echo "error: not connected";

?>