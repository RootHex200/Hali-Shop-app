import 'package:monarch_mart/model/categorymodel.dart';
import 'package:monarch_mart/model/product_model.dart';
import 'package:monarch_mart/services/products_services.dart';

class ProductRepositories {
  ProductServices productServices = ProductServices();

  Future<ProductModel> getProductData() async {
    final response = await productServices.getProductResponse();
    var data = ProductModel.fromJson(response);
    return data;
  }

  Future<CategoryModel> getCategoryData() async {
    final response = await productServices.getCategoryResponse();
    var data = CategoryModel.fromJson(response);
    return data;
  }
}
