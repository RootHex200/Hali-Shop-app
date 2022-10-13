import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/widgets/spaceer.dart';

class OptionList extends StatelessWidget {
  const OptionList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
            
                children: [
                  Container(
                    // margin: const EdgeInsets.only(left: 20, right: 10),
                    width: 80,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Appcolors.primaryColor.withOpacity(0.2)),
                  ),
                  const VerticalSpacer(height: 10),
                  const Text(
                    "Top Seller",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            );
          }),
    );
  }
}
