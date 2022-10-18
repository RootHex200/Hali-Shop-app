import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/detailspage/detailscomponent/add_to_cart_buy_now.dart';
import 'package:monarch_mart/view/android_view/detailspage/detailscomponent/brand_sku_size.dart';
import 'package:monarch_mart/view/android_view/detailspage/detailscomponent/product_view_image.dart';
import 'package:monarch_mart/view/android_view/detailspage/detailscomponent/title_rating_price.dart';

class AndroidDetailsPage extends StatelessWidget {
  const AndroidDetailsPage({super.key});

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
          actions: const [
            Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Appcolors.primaryColor,
                )),
            HorizontalSpacer(width: 10),
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.favorite_outline,
                  color: Appcolors.primaryColor,
                ))
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
                children: const [
                  ProductImageView(),
                  VerticalSpacer(height: 10),
                  TitleRatingPrice(),
                  VerticalSpacer(height: 20),
                  BrandSKUSize(),
                  
                ],
              )),
            ),
            const AddToCartAndBuyNow()
          ],
        ));
  }
}
