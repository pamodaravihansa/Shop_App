import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String id;
  final double price;
  final int quantity;
  final String title;

  CartItem(this.id, this.price, this.quantity, this.title);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          leading: Chip(
            backgroundColor: Theme.of(context).colorScheme.primary,
            padding: EdgeInsets.all(8),
            label: Text(
              '\$$price',
              style: TextStyle(color: Colors.white),
            ),
          ),
          title: Text(title),
          subtitle: Text('Total : \$${(price * quantity)}'),
          trailing: Text('$quantity  x'),
        ),
      ),
    );
  }
}
