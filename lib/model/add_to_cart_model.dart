import 'dart:convert';

class AddToCartModel {
  final String title;
  final String image;
  final String price;
  AddToCartModel({
    required this.title,
    required this.image,
    required this.price,
  });
  

  AddToCartModel copyWith({
    String? title,
    String? image,
    String? price,
  }) {
    return AddToCartModel(
      title: title ?? this.title,
      image: image ?? this.image,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'title': title});
    result.addAll({'image': image});
    result.addAll({'price': price});
  
    return result;
  }

  factory AddToCartModel.fromMap(Map<String, dynamic> map) {
    return AddToCartModel(
      title: map['title'] ?? '',
      image: map['image'] ?? '',
      price: map['price'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AddToCartModel.fromJson(String source) => AddToCartModel.fromMap(json.decode(source));

  @override
  String toString() => 'AddToCartModel(title: $title, image: $image, price: $price)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AddToCartModel &&
      other.title == title &&
      other.image == image &&
      other.price == price;
  }

  @override
  int get hashCode => title.hashCode ^ image.hashCode ^ price.hashCode;
}
