class AuthModel {
  bool? success;
  Data? data;

  AuthModel({this.success, this.data});

  AuthModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? userid;
  String? fullname;
  String? email;
  String? password;
  String? phone;
  String? gender;
  String? address;
  String? country;
  String? city;
  String? pincode;
  String? token;
  String? sId;
  String? addedon;

  Data(
      {this.userid,
      this.fullname,
      this.email,
      this.password,
      this.phone,
      this.gender,
      this.address,
      this.country,
      this.city,
      this.pincode,
      this.token,
      this.sId,
      this.addedon});

  Data.fromJson(Map<String, dynamic> json) {
    userid = json['userid'];
    fullname = json['fullname'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    gender = json['gender'];
    address = json['address'];
    country = json['country'];
    city = json['city'];
    pincode = json['pincode'];
    token = json['token'];
    sId = json['_id'];
    addedon = json['addedon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userid'] = userid;
    data['fullname'] = fullname;
    data['email'] = email;
    data['password'] = password;
    data['phone'] = phone;
    data['gender'] = gender;
    data['address'] = address;
    data['country'] = country;
    data['city'] = city;
    data['pincode'] = pincode;
    data['token'] = token;
    data['_id'] = sId;
    data['addedon'] = addedon;
    return data;
  }
}
