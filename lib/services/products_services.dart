import 'package:dio/dio.dart';

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
