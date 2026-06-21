<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    
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
        $product_quantity = $row['quantity'];
        $colors_string = $row['color'];
        $colors_array = explode(',', $colors_string);
        $product_brand = $row['brand'];

    } else {
        echo "Product not found";
    }

    $conn->close();
    ?>
    <div class="_magnify_container">
        <div class="_magnify_img_container">
            <img class="magnifiedImg2" src="<?php echo $image_path ?>" />
        </div>
        <div class="Islider">
        <input type="range" min="1" max="100" value="50" class="Islider" id="myRange">
    </div>

    </div>
    

    <script>
        var slider = document.getElementById("myRange");
        var magnifiedImg = document.querySelector('.magnifiedImg2');
        
        slider.addEventListener('input', function() {
            var value = this.value;
            magnifiedImg.style.transform = "scale(" + (value / 50) + ")";
        });
    </script>
</body>
</html>