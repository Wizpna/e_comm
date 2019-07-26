import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:flutter/rendering.dart';
import 'package:e_comm/provider/orders.dart';
import 'package:e_comm/provider/products.dart';
import 'package:e_comm/provider/similar_products.dart';
import 'package:e_comm/screens/cart_screen.dart';
import './provider/cart.dart';

import './screens/products_overview_screens.dart';
import './screens/product_detail_screen.dart';
import './screens/orders_screen.dart';

main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepOrange,
        ),
        home: ProductsOverViewScreen(),
        routes: {
          ProductDetailScreen.routName: (ctx) => ProductDetailScreen(),
          CartScreen.routName: (ctx) => CartScreen(),
          OrdersScreen.rountName: (ctx) => OrdersScreen(),
        },
      ),
    );
  }
}
