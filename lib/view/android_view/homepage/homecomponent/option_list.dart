import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/widgets/spaceer.dart';

class OptionList extends StatelessWidget {
  const OptionList({super.key});

  static final List optList = [
    {"name": "Top Sellers", "icon": "assets/images/mmicon/one.png"},
    {"name": "Top Brands", "icon": "assets/images/mmicon/two.png"},
    {"name": "Best Sellings", "icon": "assets/images/mmicon/three.png"},
    {"name": "New Arrival", "icon": "assets/images/mmicon/four.png"},
    {"name": "All Offers", "icon": "assets/images/mmicon/five.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: ListView.builder(
          itemCount: optList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    // margin: const EdgeInsets.only(left: 20, right: 10),
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Appcolors.primaryColor.withOpacity(0.2)),
                    child: Image.asset(
                      "${optList[index]["icon"]}",
                      color: Appcolors.primaryColor,
                    ),
                  ),
                  const VerticalSpacer(height: 10),
                  Text(
                    "${optList[index]["name"]}",
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            );
          }),
    );
  }
}
