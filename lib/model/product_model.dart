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
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['total_product'] = totalProduct;
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
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    thumdescription = json['thumdescription'];
    if (json['description'] != null) {
      description = <Description>[];
      json['description'].forEach((v) {
        description!.add(Description.fromJson(v));
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
        styles!.add(Styles.fromJson(v));
      });
    }
    addedon = json['addedon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['productid'] = productid;
    data['title'] = title;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['thumdescription'] = thumdescription;
    if (description != null) {
      data['description'] = description!.map((v) => v.toJson()).toList();
    }
    data['price'] = price;
    data['thumimage'] = thumimage;
    data['images'] = images;
    data['rating'] = rating;
    data['stock'] = stock;
    data['discount'] = discount;
    if (styles != null) {
      data['styles'] = styles!.map((v) => v.toJson()).toList();
    }
    data['addedon'] = addedon;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['categoryid'] = categoryid;
    data['title'] = title;
    data['addedon'] = addedon;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['des1'] = des1;
    data['des2'] = des2;
    data['des'] = des;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['title'] = title;
    data['price'] = price;
    data['images'] = images;
    data['styleid'] = styleid;
    return data;
  }
}
