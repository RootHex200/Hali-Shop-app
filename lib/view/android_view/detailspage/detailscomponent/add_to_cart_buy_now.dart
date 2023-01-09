import 'package:flutter/material.dart';
import 'package:monarch_mart/model/add_to_cart_model.dart';
import 'package:monarch_mart/repositories/products_repositories.dart';
import 'package:monarch_mart/utils/colors.dart';

class AddToCartAndBuyNow extends StatelessWidget {
  final AddToCartModel addToCartModel;
  const AddToCartAndBuyNow({super.key, required this.addToCartModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              ProductRepositories().addToCartData(addToCartModel);
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              height: 50,
              width: (MediaQuery.of(context).size.width / 2) - 20,
              decoration: BoxDecoration(
                  color: Appcolors.addToCard,
                  borderRadius: BorderRadius.circular(9)),
              child: const Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            height: 50,
            width: (MediaQuery.of(context).size.width / 2) - 20,
            decoration: BoxDecoration(
                color: Appcolors.primaryColor,
                borderRadius: BorderRadius.circular(9)),
            child: const Center(
              child: Text(
                "But Now",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          )
        ],
      ),
    );
  }
}
