<?php
session_start();


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "swooshspotdata";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


if (isset($_GET['product_id'])) {
    $product_id = $_GET['product_id'];
    

    $user_id = $_SESSION['user_id'];
    $sql = "SELECT quantity FROM cart WHERE user_id = $user_id AND product_id = $product_id";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $quantity = $row['quantity'];
        

        if ($quantity == 1) {
            $sql = "DELETE FROM cart WHERE user_id = $user_id AND product_id = $product_id";
            if ($conn->query($sql) === TRUE) {
                echo json_encode(array("success" => true, "message" => "Produkt został usunięty z koszyka."));
            } else {
                echo json_encode(array("success" => false, "message" => "Błąd podczas usuwania produktu: " . $conn->error));
            }
        } else {

            $new_quantity = $quantity - 1;
            $sql = "UPDATE cart SET quantity = $new_quantity WHERE user_id = $user_id AND product_id = $product_id";
            if ($conn->query($sql) === TRUE) {
                echo json_encode(array("success" => true, "message" => "Ilość produktu w koszyku została zmniejszona."));
            } else {
                echo json_encode(array("success" => false, "message" => "Błąd podczas aktualizacji ilości produktu: " . $conn->error));
            }
        }
    } else {
        echo json_encode(array("success" => false, "message" => "Nie znaleziono produktu w koszyku."));
    }
}

$conn->close();
?>
