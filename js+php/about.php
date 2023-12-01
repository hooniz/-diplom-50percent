
<?php
$id = intval($_GET['id']);
$conn = new mysqli('localhost', 'root', '0000', 'diploma');
if($conn->connect_error){
    die("Ошибка: " . $conn->connect_error);
}
$result1 = mysqli_query($conn,"select email from authorized where id = '$id';");
$result = mysqli_query($conn,"SELECT SurName, Name, Patronymic, Phone FROM clients WHERE clients.id='$id';");

while ($row = mysqli_fetch_array($result) ) {
        $sur = $row['SurName'];
        $name = $row ['Name'];
        $patron = $row ['Patronymic'];
        $phone = $row ['Phone'];
        require_once('wow.php');
    }
while ($row1 = mysqli_fetch_array($result1) ) {
        $email = $row1 ['email'];
        require_once('wow.php');
    }
$conn->close();
?>