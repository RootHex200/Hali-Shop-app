import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
    autoPlayAnimationDuration: const Duration(seconds: 1)
    ),
  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
    Container(
      width: 300,
    color: Colors.greenAccent,
    margin: const EdgeInsets.symmetric(horizontal: 10),
    ), 
);
  }
}