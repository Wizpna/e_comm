import 'package:flutter/material.dart';
// import 'package:flutter_course/widgets/app_drawer.dart';
import 'package:provider/provider.dart';
import 'package:e_comm/widgets/app_drawer.dart';
import '../provider/orders.dart' show Orders;
import '../widgets/oder_item.dart';

class OrdersScreen extends StatelessWidget {
  static const rountName = '/oders';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
      ),
    );
  }
}
