import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/widgets/drawer.dart';

class SearchFiled extends StatelessWidget {
  const SearchFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ]),
        prefixIcon: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();

              
              },
              icon: const Icon(Icons.menu)),
        ),
        suffixIcon: const Icon(Icons.search),
        onSuffixTap: () {},
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

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home,
                  ),
                  title: const Text('Page 1'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.train,
                  ),
                  title: const Text('Page 2'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
