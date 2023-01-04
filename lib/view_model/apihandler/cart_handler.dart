import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/model/cartmodel.dart';
import 'package:monarch_mart/repositories/products_repositories.dart';
import 'package:monarch_mart/view_model/carthandler/cart_handler_provider.dart';

final cartProvider = FutureProvider<CartModel>((ref) async {
  ProductRepositories productRepositories = ProductRepositories();
  int sum = 0;
  CartModel cartModel = await productRepositories.getCartData();

  for (int i = 0; i < cartModel.data!.items!.length; i++) {
    sum += int.parse(cartModel.data!.items![i].price.toString());
  }
  ref.read(totalAmoutn.notifier).state = sum;
  return await productRepositories.getCartData();
});
