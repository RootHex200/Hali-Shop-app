import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

List banner = [
 "assets/images/banner1.png",
 "assets/images/banner2.png",
 "assets/images/banner3.png",
 "assets/images/banner4.png",
 "assets/images/banner5.png",

];

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      options: CarouselOptions(
          height: 150,
          enlargeCenterPage: true,
          autoPlay: true,
          reverse: true,
          autoPlayAnimationDuration: const Duration(seconds: 1)),
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
        width: 300,
        
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Image(image: AssetImage(banner[itemIndex])),
      ),
    );
  }
}
