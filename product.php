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
    <header>
        <div class="_nav">
            <div class="_logo">
                <img src="Assets/Images/Bright-Logo.png">
            </div>
            <div class="_menu">
                <div class="_menu_link"><a href="index.php">STRONA GŁÓWNA</a></div>
                <div class="_menu_link"><strong><a href="shop.php">SKLEP</a></strong></div>
                <div class="_menu_link"><a href="contact.php">KONTAKT</a></div>
                <div class="_menu_link"><a href="info.php">INFORMACJE</a></div>
                <div class="_menu_link"><a href="cart.php">KOSZYK</a></div>
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
                        <a href="shop.php" class="_small_menu_link"><strong>SKLEP</strong></a>
                        <a href="contact.php" class="_small_menu_link">KONTAKT</a>
                        <a href="info.php" class="_small_menu_link">INFORMACJE</a>
                        <a href="cart.php" class="_small_menu_link">KOSZYK</a>
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


    <div class="_mobile_menu" >
    <nav role="navigation">
        <div id="menuToggle">
        
          <input type="checkbox" />
         
          <span></span>
          <span></span>
          <span></span>
          
         
          <ul id="menu">
            <a href="index.php"><li>STRONA GŁÓWNA</li></a>
            <a href="shop.php"><li><strong>SKLEP</strong></li></a>
            <a href="contact.php"><li>KONTAKT</li></a>
            <a href="info.php"><li>INFORMACJE</li></a>
            <a href="cart.php"><li>KOSZYK</li></a>
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
        $gradient_colors = $colors_string;

    } else {
        echo "Product not found";
    }

    ?>

    <div class="_product_area">
        <div class="_product_container">
            <div class="_product_img">
                <img id="pimg" class="magnifiedImg" src="<?php echo $image_path ?>">
            </div>
            <div class="_product_desc">
                <h1><?php echo $product_name ?></h1>
                <h3><?php echo $product_brand ?></h3>
                <br>
                <hr>
                <br>
                <h4 id="q" style="font-size:17px;"><strong>ILOŚĆ PAR: <span style="text-decoration: underline;font-size: 18px;" id="_quantity"><?php echo $product_quantity ?></span></strong></h4>
                
                <br>
                <?php
        

                if(isset($_SESSION['user_id'])) {
                    $user_id = $_SESSION['user_id'];
                } else {
                    $user_id = null;
                }
                ?>

                <button onclick="addToCart(<?php echo $product_id ?>,<?php echo $user_id ?>)" id="btn" type="submit" name="add" class="_add_to_cart" <?php if(!$user_id) echo 'disabled'; ?>>
                    <span id="AddToCartText"><?php if(!$user_id) echo 'Musisz być zalogowany aby dodać do koszyka'; else echo 'Dodaj do Koszyka'; ?></span>
                </button>
                <div id="alertBox" class="alert">
                    <span class="closebtn" onclick="closeAlert()">&times;</span>
                    Produkt został dodany do koszyka.
                </div>
                <br>
                <br>
                <p><strong><?php echo $product_price ?> ZŁ</strong></p>
                <br>

                <select data="ROZMIAR" class="_size_wrapper" required>
                    <?php

                    $query = "SELECT s.id, s.size_value, s.size_system FROM sizes s 
                            INNER JOIN product_sizes ps ON s.id = ps.size_id 
                            WHERE ps.product_id = $product_id";
                    $result = $conn->query($query);


                    if ($result->num_rows > 0) {

                        while ($row = $result->fetch_assoc()) {
                            echo '<option value="' . $row['id'] . '">' . $row['size_system'] . ': ' . $row['size_value'] . '</option>';
                        }
                    } else {

                        echo '<option value="">Brak dostępnych rozmiarów</option>';
                    }
                    $conn->close();
                    ?>
                </select>




                
                
                <br>
                <p><strong>W 100% oryginalne, sprawdzone przez naszych specjalistów
                    Nowe i oryginalnie zapakowane</strong><br>
                    Czas realizacji 4-12 dni</p>
                <br>
                <h2>OPIS PRODUKTU</h2>
                <br>
                <p><?php echo $product_description ?></p>
                <br>
                <h3>KOLORY PRODUKTU</h3>
                <div class="_product_colors">
                    <div class="_product_colorsG" style="background: linear-gradient(to right, <?php echo $gradient_colors; ?>);width: 100%;height:12px;border-radius:20px;box-shadow: 0px 0px 4px 0px rgba(0, 0, 0, 1);margin-top: 10px;"></div>
                </div>
            </div>
        </div>
        
    </div>
    <div class="_mobile_product_area">
        <div class="_mobile_product">
            <div class="_mobile_product_img">
            <a href="ProductMagnify.php?product_id='<?php echo $row['id'] ?>'"><img src="<?php echo $image_path ?>"></a>
            </div>
            <div class="_mobile_product_description">
                <h1><?php echo $product_name ?></h1>
                <h3><?php echo $product_brand ?></h3>
                <br>
                <hr>
                <br>
                <h4 id="q2" style="font-size:17px;"><strong>ILOŚĆ PAR: <span style="text-decoration: underline;font-size: 18px;" id="_quantity2"><?php echo $product_quantity ?></span></strong></h4>
                <br>
                <button id="btn2" type="submit" name="add" class="_add_to_cart">
                    <span id="AddToCartText">Add to Cart</span>
                </button>
                <br>
                <br>
                <p><strong><?php echo $product_price ?> ZŁ</strong></p>
                <br>
                <select data-option="option1" class="_size_wrapper">
                    <option value="40">ROZMIAR: 40</option>
                    <option value="41">ROZMIAR: 41</option>
                    <option value="42">ROZMIAR: 42</option>
                    <option value="44">ROZMIAR: 44</option>
                    <option value="46">ROZMIAR: 46</option>
                </select>
                <br>
                <br>
                <p><strong>W 100% oryginalne, sprawdzone przez naszych specjalistów
                    Nowe i oryginalnie zapakowane</strong><br>
                    Czas realizacji 4-12 dni</p>
                <br>
                <h2>OPIS PRODUKTU</h2>
                <br>
                <p><?php echo $product_description ?></p>
                <br>
                <h3>KOLORY PRODUKTU</h3>
                <div class="_product_colors">
                    <div class="_product_colorsG" style="background: linear-gradient(to right, <?php echo $gradient_colors; ?>);width: 100%;height:12px;border-radius:20px;box-shadow: 0px 0px 4px 0px rgba(0, 0, 0, 1);margin-top: 10px;"></div>
                </div>
            </div>
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
        function test(){
            console.log("Działa");
        }
        var Button = document.getElementById("btn");
        var NoneQuantity = document.getElementById("q");
        var QuantityP = document.getElementById('_quantity');

        var Button2 = document.getElementById("btn2");
        var NoneQuantity2 = document.getElementById("q2");
        var QuantityP2 = document.getElementById('_quantity2');

        var STR_Quantity = "<?php echo $product_quantity ?>";
        var Quantity = parseInt(STR_Quantity);
        if (Quantity < 15){
            if (Quantity == 0){
                NoneQuantity.textContent = "BRAK TOWARU";
                NoneQuantity.style.color = "grey";
                NoneQuantity.style.textDecoration = "line-through";
                
                Button.disabled = true;
                Button.textContent = "WYPRZEDANE";

                NoneQuantity2.textContent = "BRAK TOWARU";
                NoneQuantity2.style.color = "grey";
                NoneQuantity2.style.textDecoration = "line-through";
                
                Button2.disabled = true;
                Button2.textContent = "WYPRZEDANE";
            }
            else{
                QuantityP.style.color = 'red';
                QuantityP2.style.color = 'red';
            }
            
            
        }
        else{
            QuantityP.style.color = 'green';
            QuantityP2.style.color = 'green';
        }
    </script>
    <script src="Scripts/MagnifyGlass.js"></script>
    <script src="Scripts/AddToCart.js"></script>
    <script src="Scripts/AddToCartAlert.js"></script>
</body>
</html>


