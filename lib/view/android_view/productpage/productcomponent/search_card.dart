import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monarch_mart/view_model/apihandler/serarch_product_handler.dart';

class SearchaProduct extends StatefulWidget {
  const SearchaProduct({super.key});

  @override
  State<SearchaProduct> createState() => _SearchaProductState();
}

class _SearchaProductState extends State<SearchaProduct> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) => ListTile(
        leading:
            const Icon(Icons.arrow_back_ios, size: 28, color: Colors.black),
        title: TextField(
          controller: searchController,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: "Search here...",
            contentPadding: EdgeInsets.symmetric(vertical: 5),
          ),
        ),
        trailing: GestureDetector(
            onTap: () {
              ref.read(searchUservalueProvider.notifier).state =
                  searchController.text.toString();
            },
            child: Icon(Icons.search, size: 28, color: Colors.black)),
      ),
    );
  }
}
