class CartModel {
  bool? success;
  Data? data;
  int? total;

  CartModel({this.success, this.data, this.total});

  CartModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['total'] = total;
    return data;
  }
}

class Data {
  String? sId;
  String? userid;
  List<Items>? items;
  String? cartid;

  Data({this.sId, this.userid, this.items, this.cartid});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    userid = json['userid'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
    cartid = json['cartid'];
  }

  //total amount of product

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['userid'] = userid;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    data['cartid'] = cartid;
    return data;
  }
}

class Items {
  String? sId;
  String? cartid;
  String? title;
  String? image;
  String? price;
  int? quantity;
  String? cartitemid;
  String? addedon;

  Items(
      {this.sId,
      this.cartid,
      this.title,
      this.image,
      this.price,
      this.quantity,
      this.cartitemid,
      this.addedon});

  Items.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    cartid = json['cartid'];
    title = json['title'];
    image = json['image'];
    price = json['price'];
    quantity = json['quantity'];
    cartitemid = json['cartitemid'];
    addedon = json['addedon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['cartid'] = cartid;
    data['title'] = title;
    data['image'] = image;
    data['price'] = price;
    data['quantity'] = quantity;
    data['cartitemid'] = cartitemid;
    data['addedon'] = addedon;
    return data;
  }
}
