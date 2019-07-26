import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_comm/provider/cart.dart';
import 'package:e_comm/provider/products1.dart';
import 'package:e_comm/screens/cart_screen.dart';
import 'package:e_comm/widgets/badge.dart';
import '../provider/products.dart';
import '../provider/cart.dart';
import '../provider/similar_products.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double Price;
  // ProductDetailScreen(this.title,this.Price);
  static const routName = '/products-detail';
  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context).settings.arguments as String; //is the id!
    final loadedProduct = Provider.of<Products>(
      context,
    ).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          loadedProduct.title,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 300,
                  width: double.infinity,
                  child:
                      Image.network(loadedProduct.imageUrl, fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('\$${loadedProduct.price}',
                    style: TextStyle(color: Colors.grey, fontSize: 20.0)),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    width: double.infinity,
                    child: Text(
                      loadedProduct.description,
                      textAlign: TextAlign.center,
                      softWrap: true,
                    )),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
