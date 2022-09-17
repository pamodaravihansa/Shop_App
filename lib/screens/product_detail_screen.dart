import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String title;
  const ProductDetailScreen(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
