
class ProductModel {
  bool? success;
  int? totalProduct;
  List<Data>? data;

  ProductModel({this.success, this.totalProduct, this.data});

  ProductModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    totalProduct = json['total_product'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['total_product'] = this.totalProduct;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? productid;
  String? title;
  Category? category;
  String? thumdescription;
  List<Description>? description;
  String? price;
  String? thumimage;
  List<String>? images;
  String? rating;
  String? stock;
  String? discount;
  List<Styles>? styles;
  String? addedon;

  Data(
      {this.sId,
      this.productid,
      this.title,
      this.category,
      this.thumdescription,
      this.description,
      this.price,
      this.thumimage,
      this.images,
      this.rating,
      this.stock,
      this.discount,
      this.styles,
      this.addedon});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    productid = json['productid'];
    title = json['title'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    thumdescription = json['thumdescription'];
    if (json['description'] != null) {
      description = <Description>[];
      json['description'].forEach((v) {
        description!.add(new Description.fromJson(v));
      });
    }
    price = json['price'];
    thumimage = json['thumimage'];
    images = json['images'].cast<String>();
    rating = json['rating'];
    stock = json['stock'];
    discount = json['discount'];
    if (json['styles'] != null) {
      styles = <Styles>[];
      json['styles'].forEach((v) {
        styles!.add(new Styles.fromJson(v));
      });
    }
    addedon = json['addedon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['productid'] = this.productid;
    data['title'] = this.title;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    data['thumdescription'] = this.thumdescription;
    if (this.description != null) {
      data['description'] = this.description!.map((v) => v.toJson()).toList();
    }
    data['price'] = this.price;
    data['thumimage'] = this.thumimage;
    data['images'] = this.images;
    data['rating'] = this.rating;
    data['stock'] = this.stock;
    data['discount'] = this.discount;
    if (this.styles != null) {
      data['styles'] = this.styles!.map((v) => v.toJson()).toList();
    }
    data['addedon'] = this.addedon;
    return data;
  }
}

class Category {
  String? sId;
  String? categoryid;
  String? title;
  String? addedon;

  Category({this.sId, this.categoryid, this.title, this.addedon});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    categoryid = json['categoryid'];
    title = json['title'];
    addedon = json['addedon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['categoryid'] = this.categoryid;
    data['title'] = this.title;
    data['addedon'] = this.addedon;
    return data;
  }
}

class Description {
  String? des1;
  String? des2;
  String? des;

  Description({this.des1, this.des2, this.des});

  Description.fromJson(Map<String, dynamic> json) {
    des1 = json['des1'];
    des2 = json['des2'];
    des = json['des'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['des1'] = this.des1;
    data['des2'] = this.des2;
    data['des'] = this.des;
    return data;
  }
}

class Styles {
  String? sId;
  String? title;
  String? price;
  List<String>? images;
  String? styleid;

  Styles({this.sId, this.title, this.price, this.images, this.styleid});

  Styles.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    price = json['price'];
    images = json['images'].cast<String>();
    styleid = json['styleid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['price'] = this.price;
    data['images'] = this.images;
    data['styleid'] = this.styleid;
    return data;
  }
}
