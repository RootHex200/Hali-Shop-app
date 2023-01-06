import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/model/product_model.dart';
import 'package:monarch_mart/repositories/products_repositories.dart';

final productProvider = FutureProvider.autoDispose<ProductModel>((ref) async {
  ProductRepositories productRepositories=ProductRepositories();
  return await productRepositories.getProductData();
});