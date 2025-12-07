class Product {
  String name;
  double price;

  Product({this.name, this.price});
}
//////////////////////////////////////////////////////////
class CartItem {
  Product product;
  int numOfProduct;

  CartItem({this.product, this.numOfProduct});
}
//////////////////////////////////////////////////////////
class Cart {
  List<CartItem> cartItems = [];
//////////////////////////////////////////////////////////
  void addProduct(Product product, int numOfProduct) {
    for (var item in cartItems) {
      if (item.product.name == product.name) {
        item.numOfProduct += numOfProduct;
        return;
      }
    }
    cartItems.add(CartItem(product: product, numOfProduct: numOfProduct));
  }

//////////////////////////////////////////////////////////
  void removeProduct(Product product, [int numOfProduct = 0]) {
    for (var item in cartItems) {
      if (item.product.name == product.name) {
        if (numOfProduct == 0 || item.numOfProduct <= numOfProduct) {
          cartItems.remove(item);
        } else {
          item.numOfProduct -= numOfProduct;
        }
        return;
      }
    }
  }

//////////////////////////////////////////////////////////
  double totalPrice() {
    double total = 0;
    for (var item in cartItems) {
      total += item.product.price * item.numOfProduct;
    }
    return total;
  }

//////////////////////////////////////////////////////////
  double applyDiscount(double discountPercent) {
    return totalPrice() * (1 - discountPercent / 100);
  }
}
//////////////////////////////////////////////////////////
void main() {
  var laptop = Product(name: 'Laptop', price: 1500);
  var mouse = Product(name: 'Mouse', price: 1000);

  var cart = Cart();

  cart.addProduct(laptop, 2);
  cart.addProduct(mouse, 3);

  print('Total price: \$${cart.totalPrice()}'); // 2150
  print('Total after 10% discount: \$${cart.applyDiscount(10)}'); // 1935

  cart.removeProduct(mouse, 1); // إزالة 1 ماوس
  print('Total after removing 1 Mouse: \$${cart.totalPrice()}'); // 2100
}
