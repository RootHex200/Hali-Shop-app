class HomePageImageModel {
  bool? success;
  int? totalImage;
  List<Data>? data;

  HomePageImageModel({this.success, this.totalImage, this.data});

  HomePageImageModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    totalImage = json['total_image'];
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
    data['total_image'] = totalImage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  List<String>? imageslider;
  List<String>? imagestopcategoriesname;
  List<String>? imagestopcategories;
  List<String>? imagesfeature;
  String? addedon;

  Data(
      {this.sId,
      this.imageslider,
      this.imagestopcategoriesname,
      this.imagestopcategories,
      this.imagesfeature,
      this.addedon});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    imageslider = json['imageslider'].cast<String>();
    imagestopcategoriesname = json['imagestopcategoriesname'].cast<String>();
    imagestopcategories = json['imagestopcategories'].cast<String>();
    imagesfeature = json['imagesfeature'].cast<String>();
    addedon = json['addedon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['imageslider'] = imageslider;
    data['imagestopcategoriesname'] = imagestopcategoriesname;
    data['imagestopcategories'] = imagestopcategories;
    data['imagesfeature'] = imagesfeature;
    data['addedon'] = addedon;
    return data;
  }
}
