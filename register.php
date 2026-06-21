<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "swooshspotdata";

    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }


    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $name_surname = $_POST['name_surname'];


    $username = mysqli_real_escape_string($conn, $username);
    $email = mysqli_real_escape_string($conn, $email);
    $password = mysqli_real_escape_string($conn, $password);
    $name_surname = mysqli_real_escape_string($conn, $name_surname);


    $sql = "INSERT INTO users (name_surname, username, email, password, role) VALUES ('$name_surname', '$username', '$email', '$password', 'user')";

    if ($conn->query($sql) === TRUE) {
        header('Location: login.php?status=success');
        exit();
    } else {
        header('Location: login.php?status=error');
        exit();
    }

    $conn->close();
}
?>