

import 'package:flutter/material.dart';
import 'package:monarch_mart/view/android_view/categorypage/android_categorypage.dart';

List page=const [
  AndroidMainPage(),
  AndroidCategoryPage(),
    AndroidMainPage(),
  AndroidCategoryPage(),
    AndroidMainPage(),

];
class AndroidMainPage extends StatelessWidget {
  const AndroidMainPage({super.key});
  @override
  Widget build(BuildContext context) {
   // var indexNumber=0;
    return const Scaffold(
      body:Text("this is main page"),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (value){

      //   },
      //   currentIndex: indexNumber,
      //   items:const  [
      //     BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.grid_view),label: "Category"),
      //     BottomNavigationBarItem(icon: Icon(Icons.storefront),label: "Store"),
      //     BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
      //     BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person"),
          

      // ]),
    );
  }
}