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
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['total_categori'] = totalCategori;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['categoryid'] = categoryid;
    data['title'] = title;
    data['image'] = image;
    data['addedon'] = addedon;
    return data;
  }
}
