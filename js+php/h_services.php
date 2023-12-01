<?php
$id = intval($_GET['id']);
$id_h = intval($_GET['show_id']);
$conn = new mysqli('localhost', 'root', '0000', 'diploma');
if($conn->connect_error){
    die("Ошибка: " . $conn->connect_error);
}
$query = mysqli_query($conn,"SELECT idH, idS, idC FROM services_has_historyautoservice WHERE  idW='$id' and idH='$id_h' ");
while ($res = mysqli_fetch_array($query) ) {
    require_once('wow.php');
    $full += $res['idC'];
    }
$conn->close();
?>
