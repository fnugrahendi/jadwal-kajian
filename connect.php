<?php
// define connection parameter
$servername = "localhost";
$username = "root";
$password = "";
$dbName = "dt_kajian";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbName);
// $mysql_id = mysql_connect($servername, $username)

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
