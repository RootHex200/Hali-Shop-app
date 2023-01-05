import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/repositories/products_repositories.dart';
import 'package:monarch_mart/services/products_services.dart';
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
          error: (error, stackTrace) => const Text("error"),
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
                                              if (ref.watch(quantity(index)) <
                                                  5) {
                                                ref
                                                    .read(quantity(index)
                                                        .notifier)
                                                    .state++;

                                                ref
                                                    .read(totalAmoutn.notifier)
                                                    .state = ref
                                                        .read(totalAmoutn
                                                            .notifier)
                                                        .state +
                                                    (1 *
                                                        int.parse(cartdata.data!
                                                            .items![index].price
                                                            .toString()));
                                              }
                                            },
                                            child: const CardButton(
                                              bodercolor: Colors.black26,
                                              icondata: (Icons.add),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ref.watch(quantity(index)).toString(),
                                          style: const TextStyle(
                                              color: Appcolors.primaryColor),
                                        ),
                                        Consumer(
                                          builder: (context, ref, child) {
                                            return InkWell(
                                              onTap: () {
                                                if (ref.watch(quantity(index)) >
                                                    1) {
                                                  ref
                                                      .read(quantity(index)
                                                          .notifier)
                                                      .state--;

                                                  ref
                                                      .read(
                                                          totalAmoutn.notifier)
                                                      .state = ref
                                                          .read(totalAmoutn
                                                              .notifier)
                                                          .state -
                                                      (1 *
                                                          int.parse(cartdata
                                                              .data!
                                                              .items![index]
                                                              .price
                                                              .toString()));
                                                }
                                              },
                                              child: const CardButton(
                                                bodercolor: Colors.black26,
                                                icondata: (Icons.remove),
                                              ),
                                            );
                                          },
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            ProductRepositories()
                                                .removeCartData(cartdata.data!
                                                    .items![index].cartitemid
                                                    .toString());
                                            ProductRepositories().getCartData();
                                          },
                                          child: const CardButton(
                                            bodercolor: Appcolors.primaryColor,
                                            icondata: (Icons.delete),
                                            iconcolor: Appcolors.primaryColor,
                                          ),
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
