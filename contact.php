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
                <div class="_menu_link"><strong><a href="contact.php">KONTAKT</a></strong></div>
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
                        <a href="shop.php" class="_small_menu_link">SKLEP</a>
                        <a href="contact.php" class="_small_menu_link"><strong>KONTAKT</strong></a>
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
            <a href="shop.php"><li>SKLEP</li></a>
            <a href="contact.php"><li><strong>KONTAKT</strong></li></a>
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

    <div class="_contact_content">
        <div class="_contact">
            <strong><a href="mailto:INFO@SWOOSHSPOT.COM"><span>INFO@SWOOSHSPOT.COM</span></a></strong>
        </div>
    </div>
    <p class="_phone">TELEFON: <strong><span class="_underline">+48 826475663</span></strong></p>

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
</body>
</html>