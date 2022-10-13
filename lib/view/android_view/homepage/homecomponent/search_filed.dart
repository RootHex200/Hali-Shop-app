
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFiled extends StatelessWidget {
  const SearchFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return             Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: CupertinoSearchTextField(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ]),
                prefixIcon: const Icon(Icons.menu),
                suffixIcon: const Icon(Icons.search),
                itemColor: Colors.black,
                itemSize: 28,
                prefixInsets: const EdgeInsets.only(left: 15),
                suffixInsets: const EdgeInsets.only(right: 15),
                padding: const EdgeInsets.all(14),
                placeholder: " ",
                suffixMode: OverlayVisibilityMode.always,
              ),
            );
  }
}