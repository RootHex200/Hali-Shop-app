import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monarch_mart/utils/colors.dart';

class AndroidCategoryPage extends StatelessWidget {
  const AndroidCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            )),
        elevation: 0.0,
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20), child: Icon(Icons.search))
        ],
        centerTitle: false,
        backgroundColor: Appcolors.primaryColor,
        title: const Text(
          "All Categories",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
          child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              color: Appcolors.primaryColor,
            ),
            Positioned(
                top: 50,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: const CupertinoSearchTextField(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(12),
                    prefixIcon: Text(""),
                    placeholder: "Search Category",
                  ),
                )),
            Positioned(
              top: 180,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: 16,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            crossAxisCount: 4,
                            childAspectRatio: 5 / 6),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.3),
                                style: BorderStyle.solid)),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              color: Colors.grey,
                            ),
                            const Text(
                              "Mern& Baby",
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      )),
    );
  }
}
