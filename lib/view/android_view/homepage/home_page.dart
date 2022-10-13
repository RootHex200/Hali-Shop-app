
import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/homepage/homecomponent/all_product.dart';
import 'package:monarch_mart/view/android_view/homepage/homecomponent/carousel.dart';
import 'package:monarch_mart/view/android_view/homepage/homecomponent/discount_banner.dart';
import 'package:monarch_mart/view/android_view/homepage/homecomponent/option_list.dart';
import 'package:monarch_mart/view/android_view/homepage/homecomponent/product_list_horizontaly.dart';
import 'package:monarch_mart/view/android_view/homepage/homecomponent/search_filed.dart';
import 'package:monarch_mart/view/android_view/homepage/homecomponent/top_category_list.dart';

class AndroidHomePage extends StatelessWidget {
  const AndroidHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const  [
              //search bar of homepage
              SearchFiled(),
              VerticalSpacer(height: 10),
              //carouselslider of homepage
              CarouselSlider(),
              VerticalSpacer(height: 20),
              //option list of home
              OptionList(),
              VerticalSpacer(height: 20),
              //top categorylist of homepage
              TopCategoryList(),
              VerticalSpacer(height: 20),
              //Discount banner
              DiscountBanner(),
              VerticalSpacer(height: 20),

              //Featured Products
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Featured Products",style: TextStyle(color: Appcolors.primaryColor),)),
              VerticalSpacer(height: 20),

              //product horizontally
              ProdcutListHorizontaly(),

              //on sale products
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("On sale Products",style: TextStyle(color: Appcolors.primaryColor),)),
              VerticalSpacer(height: 20),
              ProdcutListHorizontaly(),

              AllProducts()
            ],
          ),
        ),
      ),
    );
  }
}
