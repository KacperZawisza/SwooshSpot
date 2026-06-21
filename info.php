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
                <div class="_menu_link"><strong><a href="info.php">INFORMACJE</a></strong></div>
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
                        <a href="contact.php" class="_small_menu_link">KONTAKT</a>
                        <a href="info.php" class="_small_menu_link"><strong>INFORMACJE</strong></a>
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
          
          that McDonalds stuff.
          -->
          <span></span>
          <span></span>
          <span></span>
          
         
          <ul id="menu">
            <a href="index.php"><li>STRONA GŁÓWNA</li></a>
            <a href="shop.php"><li>SKLEP</li></a>
            <a href="contact.php"><li>KONTAKT</li></a>
            <a href="info.php"><li><strong>INFORMACJE</strong></li></a>
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


    <div class="_info_area">
        <div class="_info_container">
            <h1>Informacje</h1>
            <br>
             <h3><strong>Informacje o marce</strong></h3>
             <p>
                Strona internetowa <strong><span style="text-decoration: underline;"><a href="index.php" style="color: #000;">SwooshSpot</a></span></strong> powstała 1 kwietnia 2024 roku, z myślą o pasjonatach streetwearu, 
                którzy poszukują wyjątkowych butów. Jest to dynamiczny sklep internetowy, 
                który specjalizuje się w sprzedaży butów, kierując swoją ofertę do miłośników ulicznej mody. SwooshSpot 
                nie tylko oferuje szeroki wybór obuwia, ale także stawia na unikalność i autentyczność produktów, wspierając 
                kulturę streetwearową w każdym kroku. Naszym celem jest zapewnienie klientom nie tylko wysokiej jakości butów, 
                ale również niezapomnianego doświadczenia zakupowego, które odzwierciedla ducha i styl życia streetwear.</p>
                <br>
             <h3><strong>Przetwarzanie zamówienia</strong></h3>
             <p>
                Przetworzenie zamówień może zająć 5–15 dni roboczych. Po wysłaniu zamówienia otrzymasz e-mail z numerem przesyłki. 
                Po wysłaniu w przypadku przesyłek krajowych należy poczekać 2–5 dni i dodatkowe 10–15 dni w przypadku przesyłek międzynarodowych. 
                Nie ponosimy odpowiedzialności za zagubione lub skradzione paczki. Jeśli masz jakiekolwiek pytania dotyczące zamówienia, 
                wyślij e-mail na adres <strong><a href="contact.php" style="color: #000;">info@swooshspot.com</a>.</strong></p>
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
</body>
</html>