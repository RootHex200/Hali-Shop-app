
import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';

import '../../../../utils/widgets/spaceer.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Fashion",style: TextStyle(color: Appcolors.primaryColor),),
              Container(
                height: 20,
                width: 53,
                padding: const EdgeInsets.symmetric(horizontal: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Appcolors.primaryColor,
                ),
                
                child: const Text("View All",style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
        const VerticalSpacer(height: 10),
        GridView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: 10,
          gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, childAspectRatio: 5 / 6),
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.3),
                            style: BorderStyle.solid)),
                  ),
                  const VerticalSpacer(height: 10),
                  const SizedBox(
                    width: 130,
                    height: 30,
                    child: Text(
                      "Buy 1 st.John Cobra Real Mamamahe hello name",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const VerticalSpacer(height: 10),
                  const Text(
                      "\$650 \$475",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            );
          }),
      ],
    );
  }
}
