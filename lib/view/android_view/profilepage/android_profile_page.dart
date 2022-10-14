import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';

class AndroidProfilePage extends StatelessWidget {
  const AndroidProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            )),
        elevation: 0.0,
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20), child: Icon(Icons.search,color: Colors.black,))
        ],
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const Text(
          "Profile",
          style: TextStyle(color: Appcolors.primaryColor, fontWeight: FontWeight.bold),
        ),
      ),

    );
  }
}
