function showAlert() {
    var alertBox = document.getElementById("alertBox");
    alertBox.style.display = "block";
    setTimeout(function(){
      alertBox.style.display = "none";
    }, 3000); 
  }
  
  function closeAlert() {
    document.getElementById("alertBox").style.display = "none";
  }
  

  document.getElementById("btn").addEventListener("click", function() {
    showAlert(); 
  });