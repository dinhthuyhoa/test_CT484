class Product {
  String? iD;
  String? productName;
  String? price;
  int? quantity;
  String? description;
  bool? favorite;
  String? imageURL;

  Product(
      {this.iD,
      this.productName,
      this.price,
      this.quantity,
      this.description,
      this.favorite,
      this.imageURL});

  Product.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    productName = json['ProductName'];
    price = json['Price'];
    quantity = json['Quantity'];
    description = json['Description'];
    favorite = json['Favorite'];
    imageURL = json['ImageURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['ProductName'] = productName;
    data['Price'] = price;
    data['Quantity'] = quantity;
    data['Description'] = description;
    data['Favorite'] = favorite;
    data['ImageURL'] = imageURL;
    return data;
  }
}
