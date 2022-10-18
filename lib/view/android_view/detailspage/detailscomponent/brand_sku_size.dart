import 'package:flutter/material.dart';

import '../../../../utils/widgets/spaceer.dart';

List size = ["M", "L", "XL"];

class BrandSKUSize extends StatelessWidget {
  const BrandSKUSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: RichText(
              text: const TextSpan(children: [
            TextSpan(
                text: 'SKU                   ',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            TextSpan(
                text: ':VJMP7-00008037-0001534634643',
                style: TextStyle(color: Colors.black54))
          ])),
        ),
        const VerticalSpacer(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: 'Availability       ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: ':instock', style: TextStyle(color: Colors.black54))
                ])),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: 'Brand:  ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'Not Found', style: TextStyle(color: Colors.blue))
                ])),
              ),
            ],
          ),
        ),
        const VerticalSpacer(height: 10),
        const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Size',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )),
        const VerticalSpacer(height: 10),
        Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
                size.length,
                (index) => GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                      height: 35,
                      width: 45,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              style: BorderStyle.solid,
                              color:index==1? Colors.black:Colors.grey.withOpacity(0.3),
                              width: 2)),
                        child: Center(child: Text(size[index],style:  TextStyle(color: index==1? Colors.black:Colors.grey.withOpacity(0.3)),),),
                              ),
                )))
      ],
    );
  }
}
