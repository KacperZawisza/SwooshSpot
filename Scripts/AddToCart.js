function addToCart(productid,userid) {
    var productId = productid;
    var userId = userid;
    $.ajax({
        url: 'AddToCart.php',
        type: 'POST',
        data: { product_id: productId, user_id: userId }, 
    });
}

