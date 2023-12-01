
<?php
$id_h = json_decode(file_get_contents('php://input'), true);
$id = intval($_GET['id']);
$conn = new mysqli('localhost', 'root', '0000', 'diploma');
if($conn->connect_error){
    die("Ошибка: " . $conn->connect_error);
}

$result = mysqli_query($conn,"SELECT historyautoservice.ID, date_format(DateVisit, '%d.%m.%Y') as 'DateVisit', Done, date_format(DateReady, '%d.%m.%Y')as 'DateReady', masters.`SurName`, masters.`Name`,masters.`Patronymic` FROM historyautoservice join masters ON Masters_ID = masters.ID WHERE Clients_ID = '$id';");
while ($row = mysqli_fetch_array($result) ) {
    
        $datev = $row['DateVisit'];
        $done = $row ['Done'];
        $dater = $row ['DateReady'];
        $masters = array();
        $masters[] = $row['ID'];
        $masters[] = $row['Name'];
        $masters[] = $row['Patronymic'];
        require_once('wow.php');
    }
$conn->close();
?>