


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/model/home_page_image.dart';
import 'package:monarch_mart/repositories/products_repositories.dart';

final homepageApiProvider = FutureProvider.autoDispose<HomePageImageModel>((ref) async {
  ProductRepositories productRepositories=ProductRepositories();
  return await productRepositories.getHomeimageData();
});