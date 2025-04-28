void main() {
 List<Map<String, dynamic>> orders = [
  {"orderID": 1, "orderName": "Coca-Cola", "orderPrice": 2.0},
  {"orderID": 2, "orderName": "Potato Chips", "orderPrice": 1.5},
  {"orderID": 3, "orderName": "Cheeseburger", "orderPrice": 5.0},
  {"orderID": 4, "orderPrice": 3.0},
  {"orderID": 5, "orderName": "Chicken Nuggets", "orderPrice": 4.0},
  {"orderID": 6, "orderName": "Pizza Slice", "orderPrice": 6.0},
  {"orderID": 7, "orderPrice": 2.5},
];

  for (int i = 0; i < orders.length; i++) {
    taxOrder(
      orderID: orders[i]["orderID"],
      orderPrice: orders[i]["orderPrice"],
      orderName: orders[i]["orderName"],
    );
  }
}

void taxOrder({ required int orderID, required double orderPrice, String? orderName,
}) {
  double beforeAddTax = orderPrice;
    double afterAddTax = orderPrice + (orderPrice* 0.02); 
  if (orderName != null) {
    print("====================================");
print("        Fast Food Order Receipt       ");
print("====================================");
print("Order ID        : $orderID");
print("Item Name       : $orderName");
print("Price (No Tax)  : \$${beforeAddTax.toStringAsFixed(2)}");
print("Price (With Tax): \$${afterAddTax.toStringAsFixed(2)}");
print("====================================");
print("         Thank you for your order!       ");
print("\n");
} else {
   print("====================================");
print("        Fast Food Order Receipt       ");
print("====================================");
print("Order ID        : $orderID");
 print("Item Name       : Unknown Item");
print("Price (No Tax)  : \$${beforeAddTax.toStringAsFixed(2)}");
print("Price (With Tax): \$${afterAddTax.toStringAsFixed(2)}");
print("====================================");
print("         Thank you for your order!       ");
print("\n");

  }
}
