import 'package:dio/dio.dart';

class ProductServices {
  Future<dynamic> getProductResponse() async {
    try {
      var response = await Dio().get("https://dummyjson.com/products");

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
