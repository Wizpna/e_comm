import 'package:flutter/material.dart';
import '../screens/orders_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(0.0),
          ),
          Container(
            height: 180,
            width: 80,
            child: UserAccountsDrawerHeader(
              accountName: Text('Maanka'),
              accountEmail: Text('Djkuwa1@gmail.com'),
              decoration: BoxDecoration(color: Colors.blueGrey),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text(
                'Shop',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/');
              }),
          ListTile(
              leading: Icon(Icons.payment),
              title: Text(
                'Orders',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(OrdersScreen.rountName);
              }),
          ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text(
                'Favorites',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {}),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
              leading: Icon(Icons.help),
              title: Text(
                'Rate For Us',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {}),
        ],
      ),
    );
  }
}
