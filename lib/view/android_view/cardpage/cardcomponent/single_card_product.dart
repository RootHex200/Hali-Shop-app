import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/cardpage/cardcomponent/card_button.dart';

class SingleCardProduct extends StatelessWidget {
  const SingleCardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        height: 150,
        width: double.maxFinite,
        decoration: const BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                            "flutter container decoration border radius, flutter container decoration border radius, flutter container decoration border radius",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              color: Colors.black,
                            )),
                        const VerticalSpacer(height: 5),
                        const Text(
                          "৳ 450",
                          style: TextStyle(
                              color: Appcolors.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        const VerticalSpacer(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            CardButton(
                              bodercolor: Colors.black26,
                              icondata: (Icons.add),
                            ),
                            Text(
                              "1",
                              style: TextStyle(color: Appcolors.primaryColor),
                            ),
                            CardButton(
                              bodercolor: Colors.black26,
                              icondata: (Icons.remove),
                            ),
                            CardButton(
                              bodercolor: Appcolors.primaryColor,
                              icondata: (Icons.delete),
                              iconcolor: Appcolors.primaryColor,
                            ),
                          ],
                        )
                      ]),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/monarch_mart_logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
