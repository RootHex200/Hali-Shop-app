class CategoryModel {
  bool? success;
  int? totalCategori;
  List<Data>? data;

  CategoryModel({this.success, this.totalCategori, this.data});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    totalCategori = json['total_categori'];
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
    data['total_categori'] = this.totalCategori;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? categoryid;
  String? title;
  String? image;
  String? addedon;

  Data({this.sId, this.categoryid, this.title, this.image, this.addedon});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    categoryid = json['categoryid'];
    title = json['title'];
    image = json['image'];
    addedon = json['addedon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['categoryid'] = this.categoryid;
    data['title'] = this.title;
    data['image'] = this.image;
    data['addedon'] = this.addedon;
    return data;
  }
}
