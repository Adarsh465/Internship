<?php

$servername = "localhost";
$username ="root";
$password = "Adarshsh";
$db = "adarsh";

$conn = mysqli_connect($servername, $username, $password, $db); //Connection function
if(!$conn){
    die("NOT Connect" . mysqli_connect_error($conn));//Connection error function
}
?>