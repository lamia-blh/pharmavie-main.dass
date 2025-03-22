<?php 
$connect=mysqli_connect("localhost","root","", "biopharm");

if(!$connect){
    die ("echec de la connexion : ".mysql_connect_error());
}
?>