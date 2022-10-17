import 'package:flutter/material.dart';

class Webview extends StatelessWidget {
  const Webview(List<Map<String, String>> moreSttingsURL, {super.key,});

  

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("Hello webview"),
            Text(),
          ],
        ),
      ),
    );
  }
}
