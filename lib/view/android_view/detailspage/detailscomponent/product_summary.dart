import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';

List colors = [Appcolors.primaryColor, Colors.green, Colors.blue];
List tabbarname = ["Decription", "Review", "Policy"];

class SpecificationTabbar extends StatelessWidget {
  const SpecificationTabbar({super.key});
  final checkSpecification = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
            3,
            (index) => Container(
                  width: (MediaQuery.of(context).size.width - 20) / 3,
                  decoration: BoxDecoration(
                      color: index == 0
                          ? Appcolors.primaryColor
                          : Colors.grey.withOpacity(0.3),
                      borderRadius: index == 0
                          ? BorderRadius.circular(8)
                          : BorderRadius.circular(0)),
                  child: Center(
                    child: Text(tabbarname[index],style: TextStyle(color: index==0?Colors.white:Colors.black),),
                  ),
                )),
      ),
    );
  }
}
