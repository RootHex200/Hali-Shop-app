class CartModel {
  bool? success;
  Data? data;
  int? total;

  CartModel({this.success, this.data, this.total});

  CartModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    total = json['total'];
  }



  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['total'] = this.total;
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
        items!.add(new Items.fromJson(v));
      });
    }
    cartid = json['cartid'];
  }

  //total amount of product

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['userid'] = this.userid;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['cartid'] = this.cartid;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['cartid'] = this.cartid;
    data['title'] = this.title;
    data['image'] = this.image;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    data['cartitemid'] = this.cartitemid;
    data['addedon'] = this.addedon;
    return data;
  }
}
