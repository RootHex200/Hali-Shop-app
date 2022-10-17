import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math' as math;
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/view_model/apihandler/product_handler_provider.dart';

import 'spaceer.dart';

//this widget Common widget of AndroidHomepage and AndroidProductPage

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Fashion",
                style: TextStyle(color: Appcolors.primaryColor),
              ),
              Container(
                height: 20,
                width: 53,
                padding: const EdgeInsets.symmetric(horizontal: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Appcolors.primaryColor,
                ),
                child: const Text(
                  "View All",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        const VerticalSpacer(height: 10),
        Consumer(
          builder: (context, ref, child) {
            final data = ref.watch(productProvider);
            return data.when(
              error: (error, stacktrace) {
                print(error);
                print(stacktrace);
                return const Text("data");
              },
              loading: () => const CircularProgressIndicator(),
              data: (data) {
                return GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: data.products!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        childAspectRatio:
                            MediaQuery.of(context).size.width < 360
                                ? 5 / 9
                                : 5 / 7),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(data
                                              .products![index].thumbnail
                                              .toString())),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey.withOpacity(0.3),
                                          style: BorderStyle.solid)),
                                ),
                                const VerticalSpacer(height: 10),
                                SizedBox(
                                  width: 130,
                                  child: Text(
                                    data.products![index].title.toString(),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const VerticalSpacer(height: 10),
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text:
                                          " ৳${data.products![index].price.toString()}",
                                      style: const TextStyle(
                                        decorationColor: Appcolors.primaryColor,
                                        decoration: TextDecoration.lineThrough,
                                        decorationStyle: TextDecorationStyle.solid,
                                        color: Colors.black
                                          )),
                                                                  TextSpan(
                                      text:
                                          " ৳${data.products![index].price.toString()}",
                                      style: const TextStyle(
                                          color: Appcolors.primaryColor))
                                ]))
                              ],
                            ),
                          ),
                          Positioned(
                              top: (150 / 2) - 40,
                              left: 20,
                              child: Container(
                                height: 25,
                                width: 30,
                                decoration: const BoxDecoration(
                                    color: Appcolors.primaryColor,
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(8),
                                        topRight: Radius.circular(8))),
                                child: Center(
                                  child: Text(
                                    "${data.products![index].discountPercentage!.floor().toString()}%",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ))
                        ],
                      );
                    });
              },
            );
          },
        ),
      ],
    );
  }
}
