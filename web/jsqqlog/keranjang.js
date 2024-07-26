function addToCart(item) {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    
    // Check if the item already exists in the cart
    const existingItemIndex = cart.findIndex(cartItem => cartItem.name === item.name && cartItem.price === item.price);
    if (existingItemIndex >= 0) {
        // If the item exists, update its quantity
        cart[existingItemIndex].quantity += item.quantity;
    } else {
        // If the item does not exist, add it to the cart
        cart.push(item);
    }
    
    localStorage.setItem('cart', JSON.stringify(cart));
    console.log(JSON.stringify(cart, null, 2)); // Display the cart in console
    alert('Item added to cart!');
}

