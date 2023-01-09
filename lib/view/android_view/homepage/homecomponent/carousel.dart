import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/colors.dart';

class CarouselSlider extends StatelessWidget {
  const CarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        height: 150.h,
        child: Carousel(
          images: const [
            AssetImage("assets/images/head1.png"),
AssetImage("assets/images/head2.jpg"),
          ],
          borderRadius: true,
          dotBgColor: Colors.transparent,
          dotColor: Colors.grey.withOpacity(0.4),
          dotIncreasedColor: Appcolors.primaryColor,
        ),
      ),
    );
  }
}
