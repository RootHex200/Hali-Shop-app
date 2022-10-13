
import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';

class ProdcutListHorizontaly extends StatelessWidget {
  const ProdcutListHorizontaly({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
              
                    height: 150,
                    width: 150,
              
                    decoration: BoxDecoration(
                            color: Colors.white,
                            border:Border.all(
                              color: Colors.grey.withOpacity(0.3),
                              style: BorderStyle.solid)
                    ),
                  ),
                  const VerticalSpacer(height: 10),
                  const SizedBox(
                    width: 130,
                    height: 30,

                    child:Text("Buy 1 st.John Cobra Real Mamamahe hello name",textAlign: TextAlign.center,maxLines: 2,overflow: TextOverflow.ellipsis,),
                  )
                ],
              ),
            );
          }),
    );
  }
}
