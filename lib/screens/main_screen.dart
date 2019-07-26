import 'package:flutter/material.dart';
import 'package:e_comm/screens/orders_screen.dart';
import 'package:e_comm/screens/products_overview_screens.dart';

// pages
// import '../pages/home_page.dart';
// import '../pages/order_page.dart';
// import '../pages/favorite-page.dart';
// import '../pages/profile_page.dart';

class MianScreen extends StatefulWidget {
  @override
  _MianScreenState createState() => _MianScreenState();
}

class _MianScreenState extends State<MianScreen> {
  int currentTabIndex = 0;
  List<Widget> pages;
  Widget currentPage;

  ProductsOverViewScreen productsOverViewScreen;
  OrdersScreen ordersScreen;
  // FavoritePage favoritePage;
  // ProfilePage profilePage;

  @override
  void initState() {
    super.initState();
    productsOverViewScreen = ProductsOverViewScreen();
    ordersScreen = OrdersScreen();
    // favoritePage=FavoritePage();
    // profilePage=ProfilePage();
    pages = [
      productsOverViewScreen,
      ordersScreen,
      //favoritePage,profilePage
    ];

    currentPage = productsOverViewScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('orders')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Favorites')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
      ),
      body: currentPage,
    );
  }
}
