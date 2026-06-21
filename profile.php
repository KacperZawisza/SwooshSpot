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
                <div class="_menu_link"><a href="cart.php">KOSZYK</a></div>
                <div class="_menu_link menu-link">
                <?php
                    session_start();

                    if (isset($_SESSION['user_id'])) {
                        echo '<strong><a href="profile.php"><span>' . $_SESSION['email'] . '</span></a></strong>';
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
                        <a href="cart.php" class="_small_menu_link">KOSZYK</a>
                        <span class="_small_menu_link menu-link">
                            <?php
                          
                            if (isset($_SESSION['user_id'])) {
                               
                                echo '<strong><a href="profile.php"><span>' . $_SESSION['email'] . '</span></a></strong>';
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
            <a href="index.php"><li><strong>STRONA GŁÓWNA</strong></li></a>
            <a href="shop.php"><li>SKLEP</li></a>
            <a href="contact.php"><li>KONTAKT</li></a>
            <a href="info.php"><li>INFORMACJE</li></a>
            <a href="cart.php"><li>KOSZYK</li></a>
            <div>
                <?php
             
                if (isset($_SESSION['user_id'])) {
                 
                    echo '<strong><a href="profile.php"><li>' . $_SESSION['email'] . '</li></a></strong>';
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

    
    <div class="_profile_container">
        <div class="_profile_content">
            <div class="_profile_nav">
                <div class='_profile_img'>
                    <img src="Assets/Images/Avatar.png" alt="">
                    <a href="logout.php"><div class="_logout">WYLOGUJ</div></a>
                    
                </div>
                <div class="_profile_info">
                    <h1><?php echo $_SESSION['name_surname']; ?></h1>
                    <h5><?php echo $_SESSION['email']; ?></h5>
                    <h3><?php echo $_SESSION['username']; ?></h3>
                    <div class="_edit_profile">EDYTUJ PROFIL</div>
                    <a href="../PanelSwooshspot_old" style="color: #000; text-align: left;">PanelSwooshspot &rarr;</a>
                    
                </div>
            </div>
        </div>
    </div>
    
    
    <script src="Scripts/HomeSlider.js"></script>
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