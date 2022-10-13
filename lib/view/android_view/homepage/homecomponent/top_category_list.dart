import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';
import 'package:monarch_mart/utils/widgets/spaceer.dart';
class TopCategoryList extends StatelessWidget {
  const TopCategoryList({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Appcolors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Top Categories',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                Expanded(child: Container()),
                Container(
                  height: 25,
                  width: 25,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Appcolors.primaryColor,
                    size: 20,
                  ),
                )
              ],
            ),
            const VerticalSpacer(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 80,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                          const VerticalSpacer(height: 10),
                          const SizedBox(
                            width: 80,
                            child: Text(
                              "Top Seller hello ",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
