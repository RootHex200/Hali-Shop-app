import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/model/product_model.dart';
import 'package:monarch_mart/repositories/products_repositories.dart';

final searchProductProvider =
    FutureProvider.autoDispose.family<ProductModel, String>((ref, value) async {
  ProductRepositories productRepositories = ProductRepositories();
  if (value.isEmpty || value.length==0) {
    return await productRepositories.getProductData();
  }
  return await productRepositories.getSearchProduct(value.toLowerCase());
});

final searchUservalueProvider = StateProvider.autoDispose<String>((ref) {
  return "";
});
