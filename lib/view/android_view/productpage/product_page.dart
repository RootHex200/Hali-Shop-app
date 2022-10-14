import 'package:flutter/material.dart';

import '../homepage/homecomponent/all_product.dart';
import 'productcomponent/product_filter_sort.dart';
import 'productcomponent/search_card.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [
            SearchaProduct(),
            ProductFilterSort(),
            Expanded(child: SingleChildScrollView(child: AllProducts()))
          ],
        ),
      ),
    );
  }
}
