<?php

$product_id = $_GET['product_id'];


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "swooshspotdata";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$sql = "SELECT * FROM products WHERE id = $product_id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    $row = $result->fetch_assoc();
    $product_name = $row['name'];
    $product_description = $row['description'];
    $product_price = $row['price'];
    $image_path = $row['image_url'];


    echo "<h1>$product_name</h1>";
    echo "<p>$product_description</p>";
    echo "<p>Price: $product_price</p>";
    echo "<img src='$image_path' alt='$product_name'>";
} else {
    echo "Product not found";
}

$conn->close();
?>