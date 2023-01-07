

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
      {
      required this.userid,
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userid'] = this.userid;
    data['fullname'] = this.fullname;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['password'] = this.password;
    data['gender'] = this.gender;
    data['address'] = this.address;
    data['country'] = this.country;
    data['city'] = this.city;
    data['pincode'] = this.pincode;
    return data;
  }
}
