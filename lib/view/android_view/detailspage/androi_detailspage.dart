import 'package:flutter/material.dart';
import 'package:monarch_mart/model/add_to_cart_model.dart';
import 'package:monarch_mart/model/product_model.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/cardpage/android_card_page.dart';
import 'package:monarch_mart/view/android_view/detailspage/detailscomponent/add_to_cart_buy_now.dart';
import 'package:monarch_mart/view/android_view/detailspage/detailscomponent/brand_sku_size.dart';
import 'package:monarch_mart/view/android_view/detailspage/detailscomponent/product_view_image.dart';
import 'package:monarch_mart/view/android_view/detailspage/detailscomponent/summary.dart';
import 'package:monarch_mart/view/android_view/detailspage/detailscomponent/title_rating_price.dart';

class AndroidDetailsPage extends StatelessWidget {
  final Data product;
  const AndroidDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AndroidCardPage()));
              },
              child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Appcolors.primaryColor,
                  )),
            ),
            const HorizontalSpacer(width: 10),
          ],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductImageView(
                    image: product.images,
                    discount: product.discount,
                  ),
                  const VerticalSpacer(height: 10),
                  TitleRatingPrice(
                    price: product.price.toString(),
                    product_title: product.title.toString(),
                    rating: product.rating.toString(),
                  ),
                  const VerticalSpacer(height: 20),
                  BrandSKUSize(
                    stock: product.stock.toString(),
                  ),
                  const VerticalSpacer(height: 20),
                  Visibility(
                      visible: true,
                      child: Summary(
                        description: product.thumdescription.toString(),
                      ))
                ],
              )),
            ),
            AddToCartAndBuyNow(
              addToCartModel: AddToCartModel(
                  title: product.title.toString(),
                  image: product.thumimage.toString(),
                  price: product.price.toString()),
            )
          ],
        ));
  }
}
