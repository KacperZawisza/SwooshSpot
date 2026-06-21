<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <script src="Scripts/RegisterPasswordChecker.js"></script>
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
                <div class="_menu_link"><strong><a href="login.php">LOGOWANIE</a></strong></div>
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
                        <a href="login.php" class="_small_menu_link"><strong>LOGOWANIE</strong></a>
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
            <a href="contact.php"><li>KONTAKT</li></a>
            <a href="info.php"><li>INFORMACJE</li></a>
            <a href="cart.php"><li>KOSZYK</li></a>
            <a href="login.php"><li><strong>LOGOWANIE</strong></li></a>
            
          </ul>
        </div>
      </nav>

      <div class="_mobile_logo"><img src="Assets/Images/Bright-Mini-Logo.png"></div>

    </div>

    <div class="_login_form">
        <div class="_login_container">
            <div class="tab">
                <label for="loginForm" class="switch">Logowanie</label>
                <label for="registerForm" class="switch">Rejestracja</label>
            </div>

            
                <input type="radio" id="loginForm" name="tab" checked>
                <div id="loginFormContent" class="tabcontent">
                    <form action="login.php" method="post">
                    <h2>Logowanie</h2>
                    <input name="email" type="email" placeholder="E-mail" required>
                    <input name="password" type="password" placeholder="Hasło" required>
                    <input type="submit" value="Zaloguj">
            
                    <?php
                    $error = ""; 

                    if ($_SERVER["REQUEST_METHOD"] == "POST") {
                     
                        $servername = "localhost";
                        $username = "root";
                        $password = "";
                        $dbname = "swooshspotdata";

                        $conn = new mysqli($servername, $username, $password, $dbname);
                        if ($conn->connect_error) {
                            die("Connection failed: " . $conn->connect_error);
                        }

                      
                        $email = $_POST['email'];
                        $password = $_POST['password'];

                     
                        $email = mysqli_real_escape_string($conn, $email);
                        $password = mysqli_real_escape_string($conn, $password);

                     
                        $sql = "SELECT * FROM users WHERE email='$email' AND password='$password'";
                        $result = $conn->query($sql);

                        session_start(); 

                        if ($result->num_rows > 0) {
                        
                            $row = $result->fetch_assoc();
                          
                            $_SESSION['user_id'] = $row['id'];
                      
                            $_SESSION['username'] = $row['username'];
                            $_SESSION['email'] = $row['email'];
                            $_SESSION['name_surname'] = $row['name_surname'];
                        
                            header("Location: index.php");
                            exit();
                        } else {
                            $error = "Niepoprawny e-mail lub hasło.";
                            if (!empty($error)) { echo "<p>$error</p>"; }
                        }
                        
                    }


                    ?>
                    </form>
                    <div id="alertBox" class="alert">
                    <span class="closebtn" onclick="closeAlert()">&times;</span>
                    Pomyślnie Zarejestrowano.
                    </div>
                    <?php 
    echo '<script src="Scripts/lib.js"></script>';
    if (isset($_GET['status']) && $_GET['status'] == 'success') {
        echo '<script>showAlert()</script>';
    } elseif (isset($_GET['status']) && $_GET['status'] == 'error') {
        echo '<script>modal_alert("error", "gowno");</script>';
    }

    
    ?>
                </div>
            

                
                <input type="radio" id="registerForm" name="tab">



                <div id="registerFormContent" class="tabcontent">
    <form action="register.php" method="post" id="registerForm">
        <h2>Rejestracja</h2>
        <input id="nameSurname" name="name_surname" type="text" placeholder="Imię i Nazwisko" required>
        <p id="nameSurnameError" class="error-message"></p>

        <input id="username" name="username" type="text" placeholder="Nazwa użytkownika" required>
        <p id="usernameError" class="error-message"></p>

        <input id="FPassword" name="password" type="password" placeholder="Hasło" required>
        <p id="passwordError" class="error-message"></p>

        <input id="SPassword" type="password" placeholder="Potwierdź hasło" required>
        <p id="confirmPasswordError" class="error-message"></p>

        <input id="email" name="email" type="email" placeholder="Podaj e-mail" required>
        <p id="emailError" class="error-message"></p>

        <input type="submit" value="Zarejestruj">
    </form>
</div>

<style>
    .error-message {
        color: red;
        font-size: 12px;
        margin-top: -10px;
        margin-bottom: 10px;
    }
</style>

<script>
    const form = document.getElementById('registerForm');
    const fields = {
        nameSurname: {
            element: document.getElementById('nameSurname'),
            errorElement: document.getElementById('nameSurnameError'),
            validate: value => value.trim() && !/\d/.test(value),
            errorMessage: "Imię i nazwisko nie może zawierać cyfr i nie może być puste.",
        },
        username: {
            element: document.getElementById('username'),
            errorElement: document.getElementById('usernameError'),
            validate: value => value.trim() && !/^\d+$/.test(value),
            errorMessage: "Nazwa użytkownika nie może być tylko cyframi i nie może być pusta.",
        },
        password: {
            element: document.getElementById('FPassword'),
            errorElement: document.getElementById('passwordError'),
            validate: value => /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*]).{6,}$/.test(value),
            errorMessage: "Hasło musi mieć min. 6 znaków, zawierać literę, cyfrę i znak specjalny.",
        },
        confirmPassword: {
            element: document.getElementById('SPassword'),
            errorElement: document.getElementById('confirmPasswordError'),
            validate: value => value === fields.password.element.value,
            errorMessage: "Hasła muszą być takie same.",
        },
    };

    function validateField(field) {
        const value = field.element.value;
        const isValid = field.validate(value);
        field.errorElement.textContent = isValid ? "" : field.errorMessage;
        return isValid;
    }

    function validateForm() {
        return Object.values(fields).every(validateField);
    }

    // Walidacja przy wpisywaniu i opuszczaniu pola
    Object.values(fields).forEach(field => {
        field.element.addEventListener('input', () => validateField(field));
        field.element.addEventListener('blur', () => validateField(field));
    });

    // Zablokowanie wysyłania formularza przy błędach
    form.addEventListener('submit', function (e) {
        if (!validateForm()) {
            e.preventDefault();
            alert("Popraw błędy w formularzu przed jego wysłaniem.");
        }
    });
</script>



                
                <a href="../PanelTest" style="float: right;">PanelSwooshspot &rarr;</a>
                <div style="clear: both;"></div>
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