<?php
$loginreg = $_POST['loginreg'];
$emailreg = $_POST['emailreg'];
$passreg = md5($_POST['passreg']);
$passcheck = md5($_POST['passcheck']);
if($conn->connect_error){
    die("Ошибка: " . $conn->connect_error);
}
if(filter_var($emailreg, FILTER_VALIDATE_EMAIL)){
if($passcheck==$passreg){
$conn = new mysqli('localhost', 'root', '0000', 'diploma');

$sql = "INSERT INTO authorized(`login`, `password`, `email`) VALUES('". $loginreg ."' , '". $passreg . "' , '". $emailreg ."')";

if ($conn->query($sql)===TRUE){
    echo '1';
}
else {
    echo '0';
}
$conn->close();
}
else echo '2';
}
else echo '3';

?>
