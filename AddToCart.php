<?php

$user_id = $_POST['user_id'];
$product_id = $_POST['product_id'];


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "swooshspotdata";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$check_query = "SELECT * FROM cart WHERE user_id = '$user_id' AND product_id = '$product_id'";
$result = $conn->query($check_query);

if ($result->num_rows > 0) {

    $update_query = "UPDATE cart SET quantity = quantity + 1 WHERE user_id = '$user_id' AND product_id = '$product_id'";
    
    if ($conn->query($update_query) === TRUE) {

    } else {

    }
} else {

    $add_query = "INSERT INTO cart (user_id, product_id, quantity) VALUES ('$user_id', '$product_id', 1)";
    
    if ($conn->query($add_query) === TRUE) {

    } else {

    }
}

$conn->close();
?>
