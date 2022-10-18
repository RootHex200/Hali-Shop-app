

import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/widgets/spaceer.dart';

class TitleRatingPrice extends StatelessWidget {
  const TitleRatingPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return           Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width - 100,
                        child: const Text(
                          "Cotton Polo Shirt For Men-Multi-Color",
                          maxLines: 3,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                    const VerticalSpacer(height: 10),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: index < 1
                                        ? Appcolors.primaryColor
                                        : Colors.grey.withOpacity(0.3),
                                  )),
                        ),
                        const HorizontalSpacer(width: 20),
                        const Text(
                          "(1)",
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          "\$340",
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.lineThrough),
                        ),
                        VerticalSpacer(height: 5),
                        Text(
                          "340",
                          style: TextStyle(
                              color: Appcolors.primaryColor,
                            ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }
}