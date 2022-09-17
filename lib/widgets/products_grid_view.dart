import 'package:flutter/material.dart';

import '../models/product.dart';
import './product_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    Key key,
    @required this.loadedProducts,
  }) : super(key: key);

  final List<Product> loadedProducts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ProductItem(loadedProducts[i].id,
          loadedProducts[i].title, loadedProducts[i].imageUrl),
    );
  }
}
