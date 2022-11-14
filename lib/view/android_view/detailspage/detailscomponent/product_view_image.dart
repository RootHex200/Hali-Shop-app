import 'package:flutter/material.dart';
import 'package:monarch_mart/view/android_view/detailspage/detailscomponent/carousel_slider.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/widgets/spaceer.dart';

class ProductImageView extends StatelessWidget {
  final List<String>? image;
  final discount;
  const ProductImageView(
      {super.key, required this.image, required this.discount});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Stack(children: [
        Column(mainAxisSize: MainAxisSize.min, children: [
          Center(
              child: CarouselSlider(
            image: image,
          )),
          const Divider(
            color: Colors.grey,
            thickness: 2,
            height: 2,
          ),
          const VerticalSpacer(height: 10)
        ]),
        Positioned(
            bottom: 0,
            left: 10,
            child: Container(
              height: 25,
              width: 45,
              decoration: BoxDecoration(
                  color: Appcolors.primaryColor,
                  borderRadius: BorderRadius.circular(4)),
              child: Center(
                  child: Text(
                "${discount.floor().toString()}%",
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ))
      ]),
    );
  }
}
