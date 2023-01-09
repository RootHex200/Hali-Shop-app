import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/view/android_view/productpage/productcomponent/serach_product.dart';
import 'package:monarch_mart/view_model/simplehadler/checkVisibility_provider.dart';
import 'productcomponent/search_card.dart';

class AndroidProductPage extends StatelessWidget {
  const AndroidProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Column(
            children: const [
              SearchaProduct(),
              Expanded(child: SingleChildScrollView(child: SearchProductData()))
            ],
          ),
          Positioned(
              top: 82,
              right: 0,
              child: Consumer(
                builder: (context, ref, child) {
                  final checkVisible = ref.watch(checkvisibilityStateProvider);
                  return Visibility(
                    visible: checkVisible,
                    child: Container(
                      color: Colors.red,
                      width: 160,
                      height: 200,
                      child: Column(
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: const Text("prize sort"))
                        ],
                      ),
                    ),
                  );
                },
              ))
        ]),
      ),
    );
  }
}
