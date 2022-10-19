

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text('Description',style: TextStyle(color: Appcolors.primaryColor,fontSize: 18,fontWeight: FontWeight.bold),),
          const VerticalSpacer(height: 10),
          Table(
            columnWidths:const {
              0:FlexColumnWidth(1),
              1:FlexColumnWidth(4)
            },
                                border: TableBorder.all(  
                        color: Colors.grey.withOpacity(0.3),  
                        style: BorderStyle.solid,  
                        width: 2),
            children: List.generate(4, (index) =>TableRow( 
              
              children: [  
                        Container(
                          color: Colors.grey.withOpacity(0.2),
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                        
                            children:const [Text('Website', style: TextStyle(fontSize: 18.0))]),
                        ),  
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:const [Text('Tutorial', style: TextStyle(fontSize: 18.0))]),
                        ),  
                      ]), ),
          ),
          const VerticalSpacer(height: 10),
          const Text('Summary',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
          const VerticalSpacer(height: 10),
          const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",textAlign: TextAlign.justify,style: TextStyle(color: Colors.black54,),)
        ],
      ),
    );
  }
}