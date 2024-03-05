<?php require('top.php');
$servername = "localhost";
$username = "root";
$password = "";
$database = "nawab8";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM admissions";
$result = $conn->query($sql);
?>





<?php require('footer.php'); ?>