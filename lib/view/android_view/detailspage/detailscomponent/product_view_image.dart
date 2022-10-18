

import 'package:flutter/material.dart';
import 'package:monarch_mart/view/android_view/detailspage/detailscomponent/carousel_slider.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/widgets/spaceer.dart';

class ProductImageView extends StatelessWidget {
  const ProductImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return           SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Column(mainAxisSize: MainAxisSize.min, children: const [
                Center(child: CarouselSlider()),
                Divider(
                  color: Colors.grey,
                  thickness: 2,
                  height: 2,
                ),
                VerticalSpacer(height: 10)
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
                    child: const Center(
                        child: Text(
                      "44%",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ))
            ]),
          );
  }
}