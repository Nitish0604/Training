class Product {
    constructor(id, name, price, category) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.category = category;
    }
}

class Cart {
    constructor() {
        this.cart = [];
    }

    addItem(product) {
        this.cart.push(product);
    }

    removeItem(productId) {
        this.cart = this.cart.filter(item => item.id !== productId);
    }

    updateItem(productId, quantity) {
        this.cart = this.cart.map(item => {
            if (item.id === productId) {
                item.quantity = quantity;
            }
            return item;
        });
    }

    showTotalAmount() {
        let total = this.cart.reduce((sum, item) => sum + (item.price * (item.quantity || 1)), 0);
        console.log(`Total Amount: $${total.toFixed(2)}`);
    }
}

const product1 = new Product(1, 'Apple', 1.00, 'Fruit');
const product2 = new Product(2, 'Banana', 0.50, 'Fruit');

const cart = new Cart();
cart.addItem(product1);
cart.addItem(product2);
cart.updateItem(1, 3); // Update Apple quantity to 3
cart.showTotalAmount(); // Display total amount
cart.removeItem(1); // Remove Apple from cart
cart.showTotalAmount(); // Display total amount after removal
