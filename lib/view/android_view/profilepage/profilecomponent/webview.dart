import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webview extends StatelessWidget {
  final String url;
  final String titile;
  const Webview({super.key, required this.url, required this.titile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titile.toString()),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 25,
          color: Colors.black,
        ),
      ),
      body:WebView(
              
                  onProgress: (progress) {
                    if (progress == 100) {
                    }
                  },
                  onPageFinished: (url) {
                    print(url);
                  },
                  initialUrl: url.toString(),
                )
    );
  }
}





 