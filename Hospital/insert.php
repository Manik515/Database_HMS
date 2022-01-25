<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname= "hospital";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "Connected successfully";

$sql = "INSERT INTO ACCOUNTANT VALUES ('$_POST[AID]' ,'$_POST[EMAIL]', '$_POST[NAME]' ,'$_POST[ADDRESS]' ,'$_POST[GENDER]' ,'$_POST[PHONE_NO]')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>
