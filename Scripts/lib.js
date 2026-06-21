function showAlert() {
    var alertBox = document.getElementById("alertBox");
    alertBox.style.display = "block";
    setTimeout(function(){
      alertBox.style.display = "none";
    }, 3000); 
  }