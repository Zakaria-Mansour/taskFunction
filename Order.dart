void main() {
  List<Map> orders = [
    {'orderID': 1, 'ordername': 'cola', 'price': 3},
    {'orderID': 2, 'ordername': 'chips', 'price': 5},
    {'orderID': 3, 'ordername': 'Cake', 'price': 9},
    {'orderID': 4, 'price': 13},
    {'orderID': 5, 'ordername': 'chocolate', 'price': 7},
    {'orderID': 6, 'ordername': 'Ice Cream', 'price': 15},
    {'orderID': 7, 'price': 20},
  ];

  for (int i = 0; i < orders.length; i++) {
    int id = orders[i]['orderID'];
    double price = orders[i]['price'].toDouble();
    String? name = orders[i]['ordername'];

    if (name == null) {
      OrderItem(orderID: id, price: price);
    } else {
      OrderItem(orderID: id, price: price, ordername: name);
    }
  }
}

void OrderItem({
  required int orderID,
  required double price,
  String? ordername,
}) {
  double tax = 0.02;
  double newPrice = price + tax;

  print("Order ID: $orderID");
  if (ordername != null) {
    print("Order Name: $ordername");
  }
  print("Price : $price");
  print("Price after tax: ${newPrice.toStringAsFixed(2)}");
  print("----------------------");
}
