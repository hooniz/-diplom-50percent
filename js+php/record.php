<?php
session_start();
$ids = $_SESSION["id"];
$surname = $_POST['surname'];
$name = $_POST['name'];
$patronymic = $_POST['patronymic'];
$tel = $_POST['tel'];
$date = $_POST['date'];
$time = $_POST['time'];
$comment = $_POST['comment'];
$conn = new mysqli('localhost', 'root', '0000', 'diploma');
if($conn->connect_error){
    die("Ошибка: " . $conn->connect_error);
}
$pattern = '/\+7\d{3}\d{3}\d{2}\d{2}/';
$pattern1 =  '/^([a-Яа-яё]+|\d+)$/i';
if ((preg_match($pattern, $tel)) && (preg_match($pattern1, $name)) && (preg_match($pattern1, $surname)) && (preg_match($pattern1, $patronymic))) {
    
    $result = mysqli_query($conn,"INSERT INTO `clients` (`ID`,`SurName`,`Name`,`Patronymic`,`Phone`) VALUES('". $ids ."','". $surname ."','". $name ."' ,'". $patronymic ."','". $tel ."')");
    $result2 = mysqli_query($conn,"INSERT INTO `application` (`Date`,`Client_ID`,`Comments`,`Time`) VALUES('". $date ."','". $ids ."' ,'". $comment ."','". $time ."');");
    //$result3 = mysqli_query($conn, "UPDATE clients SET SurName='". $surname ."', Name='". $name ."', Patronymic = '". $patronymic ."', Phone='". $tel ."' WHERE ID='". $ids ."';");
    if($result2){
        echo '1';
    }
    else {
        echo '0';
    }
}
else {
    echo '2';
}

$conn->close();
?>
