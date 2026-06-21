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