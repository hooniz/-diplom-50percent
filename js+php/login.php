<?php
$login = $_POST['login'];
$pass = md5($_POST['pass']);
$conn = new mysqli('localhost', 'root', '0000', 'diploma');
session_start();
if($conn->connect_error){
    die("Ошибка: " . $conn->connect_error);
}

$result = mysqli_query($conn,"SELECT id,login, password FROM authorized WHERE login='$login' AND password='$pass'");
while ($row = mysqli_fetch_array($result) ) {
        $id = $row['id'];
        $_SESSION["id"]=$id;
        $page = "http://diplom/wow.php?id=$id";
        echo $page;
    }
$conn->close();
?>
