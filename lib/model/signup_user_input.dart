class SignupUserInput {
  String? userid;
  String? fullname;
  String? email;
  String? phone;
  String? password;
  String? gender;
  String? address;
  String? country;
  String? city;
  String? pincode;

  SignupUserInput(
      {required this.userid,
      required this.fullname,
      required this.email,
      required this.phone,
      required this.password,
      required this.gender,
      required this.address,
      required this.country,
      required this.city,
      required this.pincode});

  SignupUserInput.fromJson(Map<String, dynamic> json) {
    userid = json['userid'];
    fullname = json['fullname'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
    gender = json['gender'];
    address = json['address'];
    country = json['country'];
    city = json['city'];
    pincode = json['pincode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userid'] = userid;
    data['fullname'] = fullname;
    data['email'] = email;
    data['phone'] = phone;
    data['password'] = password;
    data['gender'] = gender;
    data['address'] = address;
    data['country'] = country;
    data['city'] = city;
    data['pincode'] = pincode;
    return data;
  }
}
