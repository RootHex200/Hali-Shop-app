import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios, size: 17),
        ),
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        toolbarHeight: 28,
       // toolbarTextStyle: const TextStyle(fontSize: 17),
        titleTextStyle:const TextStyle(fontSize: 15),
        title: const Text("Purchase History", style: TextStyle(fontSize: 14),),
      ),
      body: Column(children: const []),
    ));
  }
}
