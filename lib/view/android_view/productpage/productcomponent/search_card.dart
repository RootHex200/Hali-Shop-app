import 'package:flutter/material.dart';


class SearchaProduct extends StatelessWidget {
  const SearchaProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.arrow_back_ios, size: 28, color: Colors.black),
      title: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search here...",
          contentPadding: EdgeInsets.symmetric(vertical: 5),
        ),
      ),
      trailing: Icon(Icons.search, size: 28, color: Colors.black),
    );
  }
}
