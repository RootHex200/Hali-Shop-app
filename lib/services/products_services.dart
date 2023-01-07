import 'package:dio/dio.dart';
import 'package:monarch_mart/model/add_to_cart_model.dart';
import 'package:monarch_mart/model/login_user_input.dart';
import 'package:monarch_mart/model/signup_user_input.dart';
import 'package:monarch_mart/utils/db.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductServices {
  final base_url = "http://192.168.1.21:5000/api/";
  Future<dynamic> getProductResponse() async {
    try {
      var response = await Dio().get("${base_url}product/");
      print(response.runtimeType);
      return returnResponse(response);
    } catch (e) {
      return "Error";
    }
  }

  Future<dynamic> getCategoryResponse() async {
    //http://localhost:5000/api/category
    try {
      var response = await Dio().get("${base_url}category/");
      print(response.runtimeType);
      return returnResponse(response);
    } catch (e) {
      return "Error";
    }
  }

  Future<dynamic> getCart() async {
    final SharedPreferences db = await prefs;
    var userid = db.getString("uid").toString();
    try {
      var response =
          await Dio().get("http://192.168.1.21:5000/api/user/${userid}/viewcart");
      print(response.runtimeType);
      return returnResponse(response);
    } catch (e) {
      return "Error";
    }
  }

  Future<dynamic> addToCart(AddToCartModel addToCartModel) async {
        final SharedPreferences db = await prefs;
    var userid = db.getString("uid").toString();
    try {
      var response = await Dio().post(
          "http://192.168.1.21:5000/api/user/${userid}/addtocart",
          data: addToCartModel.toJson());

      return response.statusCode;
    } catch (e) {
      return "Error";
    }
  }

  Future<dynamic> removeCart(id) async {
    try {
      var response = await Dio().delete(
          "http://192.168.1.21:5000/api/user/2/removefromcart",
          data: {"CartItemId": id.toString()});

      return response.statusCode;
    } catch (e) {
      return "Error";
    }
  }

  Future<dynamic> signup(SignupUserInput signupUserInput) async {
    try {
      var response = await Dio().post(
          "http://192.168.1.21:5000/api/user/createaccount",
          data: signupUserInput.toJson());

      return returnResponse(response);
    } catch (e) {
      return "Error";
    }
  }

  Future<dynamic> signin(LoginUserInput loginUserInput) async {
    try {
      var response = await Dio().post("http://192.168.1.21:5000/api/user/login",
          data: loginUserInput.toJson());
      return returnResponse(response);
    } catch (e) {
      return "Error";
    }
  }

  dynamic returnResponse(response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = response.data;
        return responseJson;
      case 400:
        throw "400";
      case 401:
        throw "401";
      case 403:
        throw "403";
      case 500:
        throw "500";
      default:
        throw 'Error occured while communication with server'
            ' with status code : ${response.statusCode}';
    }
  }
}
