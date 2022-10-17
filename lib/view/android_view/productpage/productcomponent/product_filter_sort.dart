import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/view_model/riverpod/checkVisibility_provider.dart';

import '../../../../utils/widgets/spaceer.dart';

class ProductFilterSort extends StatelessWidget {
  const ProductFilterSort({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text("Product"), Icon(Icons.expand_more)],
                  )),
            ),
          ),
          const HorizontalSpacer(width: 8),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black45)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.filter_alt),
                      Text("Filter"),
                    ],
                  )),
            ),
          ),
          const HorizontalSpacer(width: 8),
          Expanded(
            flex: 1,
            child: Consumer(
              builder: (context, ref, child) => InkWell(
                onTap: () {
                  ref.read(checkvisibilityStateProvider.notifier).state=!ref.read(checkvisibilityStateProvider.notifier).state;
                },
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black45)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.unfold_less),
                        Text("Sort"),
                      ],
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
