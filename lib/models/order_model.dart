class Order {
  String orderId;
  List<OrderedItem> orderedItems;
  double totalAmount;
  String paymentStatus;

  Order({
    required this.orderId,
    required this.orderedItems,
    required this.totalAmount,
    required this.paymentStatus,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    var list = json['ordered_item'] as List;
    List<OrderedItem> orderedItemsList = list.map((i) => OrderedItem.fromJson(i)).toList();

    return Order(
      orderId: json['order_id'],
      orderedItems: orderedItemsList,
      totalAmount: double.parse(json['total_amount']),
      paymentStatus: json['payment_status'],
    );
  }
}

class OrderedItem {
  String itemName;
  double price;
  int quantity;

  OrderedItem({
    required this.itemName,
    required this.price,
    required this.quantity,
  });

  factory OrderedItem.fromJson(Map<String, dynamic> json) {
    return OrderedItem(
      itemName: json['item_name'],
      price: double.parse(json['price']),
      quantity: int.parse(json['quantity']),
    );
  }
}
