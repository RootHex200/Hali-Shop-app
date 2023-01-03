

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/model/categorymodel.dart';
import 'package:monarch_mart/repositories/products_repositories.dart';

final categoryProvider = FutureProvider<CategoryModel>((ref) async {
  ProductRepositories productRepositories=ProductRepositories();
  return await productRepositories.getCategoryData();
});