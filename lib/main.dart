import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/products.dart';
import '../providers/cart.dart';

import 'screens/products_overview_screen.dart';
import 'screens/product_detail_screen.dart';
import '../screens/cart_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Products(),
        ),
        ChangeNotifierProvider(
          create: (context) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.deepOrange,
            primary: Colors.purple,
          ),
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          CartScreen.routeName: (context) => CartScreen(),
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
        },
        
      ),
    );
  }
}
