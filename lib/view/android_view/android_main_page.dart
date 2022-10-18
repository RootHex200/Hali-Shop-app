import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/view/android_view/cardpage/android_card_page.dart';
import 'package:monarch_mart/view/android_view/categorypage/android_categorypage.dart';
import 'package:monarch_mart/view/android_view/homepage/android_home_page.dart';
import 'package:monarch_mart/view/android_view/productpage/android_product_page.dart';
import 'package:monarch_mart/view/android_view/profilepage/android_profile_page.dart';
import 'package:monarch_mart/view_model/simplehadler/bottomnavigation_provider.dart';

List page = const [
  AndroidHomePage(),
  AndroidCategoryPage(),
  AndroidProductPage(),
  AndroidCardPage(),
  AndroidProfilePage()
];

class AndroidMainPage extends StatelessWidget {
  const AndroidMainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer(builder: (context, ref, child) {
          final currentIndex = ref.watch(bottomnaigationStateProvider);
          return page[currentIndex];
        }),
        bottomNavigationBar: Consumer(
          
          builder: (context, ref, child) {
            final currentIndex = ref.watch(bottomnaigationStateProvider);
            return BottomNavigationBar(
              backgroundColor: Colors.white,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Appcolors.primaryColor,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                ref.read(bottomnaigationStateProvider.notifier).state = index;
              },
              currentIndex: currentIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.grid_view), label: "Category"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.storefront), label: "Store"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: "Cart"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Person"),
              ]);
          },
        ));
  }
}
