import 'package:monarch_mart/model/add_to_cart_model.dart';
import 'package:monarch_mart/model/cartmodel.dart';
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

  Future<CartModel> getCartData() async {
    final response = await productServices.getCart();
    var data = CartModel.fromJson(response);
    return data;
  }


  Future<void> addToCartData(AddToCartModel addToCartModel) async {
    final response = await productServices.addToCart(addToCartModel);
    print(response);
    if (response == 200) {
      print("Data is added in add to cart");
    } else {
      print(response);
    }
  }

    Future<void> removeCartData(id) async {
    final response = await productServices.removeCart(id);
    if (response == 200) {
      print("Data is remove");
    } else {
      print(response);
    }
  }

}
