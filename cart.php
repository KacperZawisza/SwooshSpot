<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="_nav">
            <div class="_logo">
                <img src="Assets/Images/Bright-Logo.png">
            </div>
            <div class="_menu">
                <div class="_menu_link"><a href="index.php">STRONA GŁÓWNA</a></div>
                <div class="_menu_link"><a href="shop.php">SKLEP</a></div>
                <div class="_menu_link"><a href="contact.php">KONTAKT</a></div>
                <div class="_menu_link"><a href="info.php">INFORMACJE</a></div>
                <div class="_menu_link"><strong><a href="cart.php">KOSZYK</a></strong></div>
                <div class="_menu_link menu-link">
                <?php
                    session_start();
                    if (isset($_SESSION['user_id'])) {
                        echo '<a href="profile.php"><span>' . $_SESSION['email'] . '</span></a>';
                    } else {
                        echo '<a href="login.php">LOGOWANIE</a>';
                    }
                ?>
                </div>
            </div>
        </div>
    </header>

    <div class="_small_header">
        <div class="_small_nav">
            <div class="_small_logo">
                <img src="Assets/Images/Bright-Mini-Logo.png">
            </div>
            <div class="_small_menu">
                <ul class="_small_menu_items">
                    <li>
                        <a href="index.php" class="_small_menu_link">STRONA GŁÓWNA</a>
                        <a href="shop.php" class="_small_menu_link">SKLEP</a>
                        <a href="contact.php" class="_small_menu_link">KONTAKT</a>
                        <a href="info.php" class="_small_menu_link">INFORMACJE</a>
                        <a href="cart.php" class="_small_menu_link"><strong>KOSZYK</strong></a>
                        <span class="_small_menu_link menu-link">
                            <?php
                            if (isset($_SESSION['user_id'])) {
                                echo '<a href="profile.php"><span>' . $_SESSION['email'] . '</span></a>';
                            } else {
                                echo '<a href="login.php">LOGOWANIE</a>';
                            }
                            ?>
                        </span>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="_mobile_menu">
        <nav role="navigation">
            <div id="menuToggle">
                <input type="checkbox" />
                <span></span>
                <span></span>
                <span></span>
                <ul id="menu">
                    <a href="index.php"><li>STRONA GŁÓWNA</li></a>
                    <a href="shop.php"><li>SKLEP</li></a>
                    <a href="contact.php"><li>KONTAKT</li></a>
                    <a href="info.php"><li>INFORMACJE</li></a>
                    <a href="cart.php"><li><strong>KOSZYK</strong></li></a>
                    <div>
                        <?php
                        if (isset($_SESSION['user_id'])) {
                            echo '<a href="profile.php"><li>' . $_SESSION['email'] . '</li></a>';
                        } else {
                            echo '<a href="login.php"><li>LOGOWANIE</li></a>';
                        }
                        
                        ?>
                    </div>
                </ul>
            </div>
        </nav>
        <div class="_mobile_logo"><img src="Assets/Images/Bright-Mini-Logo.png"></div>
    </div>

    <div class="_cart_area">
        <div class="_cart_content">
            <h2><strong>Twój Koszyk</strong></h2>
            <br>
            <div class="_cart_info">
                <div class="_cart_first"></div>
                <div class="_cart_second">
                    <div class="_pqt">Cena</div>
                    <div class="_pqt">Ilość</div>
                    <div class="_pqt">Suma</div>
                </div>
            </div>

            <div class="_cart_item_container">
                <?php
                $servername = "localhost";
                $username = "root";
                $password = "";
                $dbname = "swooshspotdata";
                
                $conn = new mysqli($servername, $username, $password, $dbname);
                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }
                
                $hasItems = False;
                $totalPrice = 0;

                if (isset($_SESSION['user_id'])) {
                    $user_id = $_SESSION['user_id'];
                    $sql = "SELECT c.user_id, p.id AS product_id, p.name AS product_name, p.price, p.image_url, c.quantity, c.size 
                            FROM cart c 
                            INNER JOIN products p ON c.product_id = p.id 
                            WHERE c.user_id = $user_id";
                    $result = $conn->query($sql);
                
                    if ($result->num_rows > 0) {
                        $hasItems = true;
                        while ($row = $result->fetch_assoc()) {
                            $totalPrice += $row['price'] * $row['quantity'];
                            echo '<div class="_cart_item">';
                            echo '<div class="_cart_item_first">';
                            echo '<div class="_cart_img">';
                            echo '<img src="' . $row['image_url'] . '">';
                            echo '</div>';
                            echo '<div class="_cart_item_desc">';
                            echo '<a href="#"><h5>' . $row['product_name'] . '</h5></a>';
                            echo '<p><a href="javascript:void(0);" onclick="removeFromCart(' . $row['product_id'] . ')">Usuń</a></p>';
                            echo '</div>';
                            echo '</div>';
                            echo '<div class="_cart_item_second">';
                            echo '<div class="_cart_item_price">';
                            echo '<span><h5>' . $row['price'] . ' ZŁ</h5></span>';
                            echo '</div>';
                            echo '<div class="_cart_item_quantity">';
                            echo '<span><h5>' . $row['quantity'] . '</h5></span>';
                            echo '</div>';
                            echo '<div class="_cart_item_total">';
                            echo '<span><h5>' . ($row['price'] * $row['quantity']) . ' ZŁ</h5></span>';
                            echo '</div>';
                            echo '</div>';
                            echo '</div>';
                        }
                    } else {
                        echo "Twój koszyk jest pusty.";
                    }
                } else {
                    echo "Musisz być zalogowany, aby zobaczyć zawartość koszyka.";
                }

                $conn->close();
                ?>
            </div>

            <?php if ($hasItems): ?>
            <div class="_checkout_content">
                <div class="_top_checkout">
                    <h1>Zamówienie</h1>
                    <p>Suma <strong><?php echo number_format($totalPrice, 2); ?> ZŁ</strong></p>
                </div>
                <div class="_bottom_checkout">
                    <div class="_checkout_btn _btn_r">KONTYNUUJ ZAKUPY</div>
                    <a href="checkout.php"><div class="_checkout_btn">ZAMÓW</div></a>
                </div>
            </div>
            <?php endif; ?>
        </div>
    </div>

    <footer>
        <div class="_content_logo">
            <a href="index.html"><div class="_mini_logo"><img src="Assets/Images/Bright-Mini-Logo.png"></div></a>
        </div>
        <div class="_content_links">
            <div class="_footer_links">
                <div class="_footer_link"><a href="#">INSTAGRAM</a> / <a href="#">TWITTER</a> / <a href="#">YOUTUBE</a> / <a href="#">NEWSLETTER</a> / <a href="#">APP</a></div>
            </div>
        </div>
    </footer>
    <script>
    function removeFromCart(product_id) {
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "RemoveFromCart.php?product_id=" + product_id, true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                location.reload();
            }
        };
        xhr.send();
    }
    </script>
</body>
</html>
