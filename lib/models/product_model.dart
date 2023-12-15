class ProductModel {
  String? productId; 
  String productName;
  String productDescription;
  double sellingPrice;
  double basePrice; 
  int stockQuantity;
  String startTime;
  String endTime;
  String? productImageUrl; 

  ProductModel({
    this.productId,
    required this.productName,
    required this.productDescription,
    required this.sellingPrice,
    required this.basePrice,
    required this.stockQuantity,
    required this.startTime,
    required this.endTime,
    this.productImageUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      if (productId != null) 'productId': productId,
      'productName': productName,
      'productDescription': productDescription,
      'sellingPrice': sellingPrice,
      'basePrice': basePrice,
      'stockQuantity': stockQuantity,
      'startTime': startTime,
      'endTime': endTime,
      if (productImageUrl != null) 'productImageUrl': productImageUrl,
    };
  }


  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      productId: json['productId'],
      productName: json['productName'],
      productDescription: json['productDescription'],
      sellingPrice: json['sellingPrice'],
      basePrice: json['basePrice'],
      stockQuantity: json['stockQuantity'],
      startTime: json['startTime'],
      endTime: json['endTime'],
      productImageUrl: json['productImageUrl'],
    );
  }
}
