<?php

$host = getenv('DB_HOST') ?: "localhost";
$username = getenv('DB_USER') ?: "root";
$password = getenv('DB_PASSWORD') ?: "";
$database = getenv('DB_NAME') ?: "ceramica";

//CREATING database connection
$con= mysqli_connect($host,$username,$password,$database);

//check db connection
if(!$con){
    die("Connection Failes: ". mysqli_connect_error());
}
else
{
   
}


?>