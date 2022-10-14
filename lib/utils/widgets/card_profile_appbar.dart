import 'package:flutter/material.dart';

class CardProfileAppBar extends StatelessWidget {
  final Widget title;
  const CardProfileAppBar({super.key, required this.title});

  ///this app bar for card & profile page Top possition.

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
      ),
      title: title,
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
      ),
    );
  }
}
