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
            NetworkImage(
                'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
            NetworkImage(
                'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
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
