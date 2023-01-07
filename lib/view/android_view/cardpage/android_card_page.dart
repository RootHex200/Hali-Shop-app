import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/string.dart';
import 'package:monarch_mart/utils/widgets/card_profile_appbar.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/cardpage/cardcomponent/single_card_product.dart';
import 'package:monarch_mart/view/android_view/profilepage/login/checkout_page.dart';
import 'package:monarch_mart/view_model/carthandler/cart_handler_provider.dart';

class AndroidCardPage extends StatelessWidget {
  const AndroidCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CardProfileAppBar(
                  title: Text(
                "Your Card",
                style: TextStyle(color: Appcolors.primaryColor),
              )),
              const Expanded(child: SingleCardProduct()),
              const VerticalSpacer(height: 5),
              Container(
                height: 30,
                decoration: const BoxDecoration(
                  color: Appcolors.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          AppString.totalAmount,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Consumer(
                          builder: (context, ref, child) {
                            final total = ref.watch(totalAmoutn);
                            return Text(
                              " ৳ $total",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            );
                          },
                        ),
                      ),
                    ]),
              ),
              const VerticalSpacer(height: 5),
              Consumer(
                builder:(context,ref,child) {
                  return GestureDetector(
                    onTap: (){
                      if(ref.watch(totalAmoutn)>10){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Checkout()));
                      }
                    },
                    child: Container(
                    height: 50,
                    decoration: const BoxDecoration(color: Appcolors.primaryColor),
                    child: const Center(
                        child: Text(
                      AppString.proceedToOrder,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                                  ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
