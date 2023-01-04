import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/model/cartmodel.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
import 'package:monarch_mart/view/android_view/cardpage/cardcomponent/card_button.dart';
import 'package:monarch_mart/view_model/apihandler/cart_handler.dart';
import 'package:monarch_mart/view_model/carthandler/cart_handler_provider.dart';

class SingleCardProduct extends StatelessWidget {
  const SingleCardProduct({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final cartprovider = ref.watch(cartProvider);

        return cartprovider.when(
          error: (error, stackTrace) =>const Text("error"),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          data: (cartdata) {
            return ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: cartdata.data!.items!.length,
              itemBuilder: (context, index) {
                return Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
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
                                    Text(
                                        cartdata.data!.items![index].title
                                            .toString(), //"flutter container decoration border radius, flutter container decoration border radius, flutter container decoration border radius",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black,
                                        )),
                                    const VerticalSpacer(height: 5),
                                    Text(
                                      "৳ ${cartdata.data!.items![index].price}",
                                      style: const TextStyle(
                                          color: Appcolors.primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const VerticalSpacer(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Consumer(
                                          builder: (context, ref, child) =>
                                              InkWell(
                                            onTap: () {
                                              // setState(() {
                                              //   var temp =
                                              //       cart_data[index][0] as int;
                                              //   var amount =
                                              //       cart_data[index][3] as int;
                                              //   var fixed_amount =
                                              //       cart_data[index][1] as int;
                                              //   if (temp < 5) {
                                              //     cart_data[index][0] =
                                              //         temp + 1;
                                              //     cart_data[index][3] =
                                              //         amount + fixed_amount;
                                              //     double totalamount =
                                              //         totalAccount();
                                              //     ref
                                              //         .read(
                                              //             totalAmoutn.notifier)
                                              //         .setValue(totalamount);
                                              //   }
                                              // }
                                              // );
                                            },
                                            child: const CardButton(
                                              bodercolor: Colors.black26,
                                              icondata: (Icons.add),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          cartdata.data!.items![index].quantity
                                              .toString(),
                                          style: const TextStyle(
                                              color: Appcolors.primaryColor),
                                        ),
                                        Consumer(
                                          builder: (context, ref, child) {
                                            return InkWell(
                                              onTap: () {
                                                // setState(() {
                                                //   var temp = cart_data[index][0]
                                                //       as int;
                                                //   var amount = cart_data[index]
                                                //       [3] as int;
                                                //   var fixed_amount =
                                                //       cart_data[index][1]
                                                //           as int;
                                                //   if (temp > 1) {
                                                //     cart_data[index][0] =
                                                //         temp - 1;
                                                //     cart_data[index][3] =
                                                //         amount - fixed_amount;
                                                //     double totalamount =
                                                //         totalAccount();
                                                //     ref
                                                //         .read(totalAmoutn
                                                //             .notifier)
                                                //         .setValue(totalamount);
                                                //   }
                                                // });
                                              },
                                              child: const CardButton(
                                                bodercolor: Colors.black26,
                                                icondata: (Icons.remove),
                                              ),
                                            );
                                          },
                                        ),
                                        const CardButton(
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
                                  child: Image.network(cartdata
                                      .data!.items![index].image
                                      .toString())),
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            );
          },
        );
      },
    );
  }
}
