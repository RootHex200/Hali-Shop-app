import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/widgets/spaceer.dart';

class TitleRatingPrice extends StatelessWidget {
  final String product_title;
  final String price;
  final String rating;
  const TitleRatingPrice(
      {super.key,
      required this.product_title,
      required this.price,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: Text(
                    product_title,
                    maxLines: 3,
                    style: const TextStyle(
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
                              color: index < int.parse(rating)
                                  ? Appcolors.primaryColor
                                  : Colors.grey.withOpacity(0.3),
                            )),
                  ),
                  const HorizontalSpacer(width: 20),
                  Text(
                    "(${rating})",
                    style: const TextStyle(color: Colors.black54, fontSize: 18),
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
                children: [
                  Text(
                    "\$$price",
                    style: const TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.lineThrough),
                  ),
                  const VerticalSpacer(height: 5),
                  Text(
                    price.toString(),
                    style: const TextStyle(
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
