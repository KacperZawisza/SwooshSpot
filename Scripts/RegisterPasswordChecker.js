function validatePasswords() {
    var password = document.getElementById('FPassword').value;
    var confirmPassword = document.getElementById('SPassword').value;

    let PasswordAlert = document.querySelector('._passwords_not_match');

    if (password !== confirmPassword) {
        PasswordAlert.style.display = "block";
        document.getElementById('FPassword').value = '';
        document.getElementById('SPassword').value = '';
        document.getElementById('FPassword').style.borderColor = 'red';
        document.getElementById('SPassword').style.borderColor = 'red';
        return false; 
    }
    PasswordAlert.style.display = "none";
    document.getElementById('FPassword').style.borderColor = '';
        document.getElementById('SPassword').style.borderColor = '';
    return true; 
}