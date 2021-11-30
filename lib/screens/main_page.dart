import 'package:bottom_navbar/screens/about_page.dart';
import 'package:bottom_navbar/screens/cart_page.dart';
import 'package:bottom_navbar/screens/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [HomePage(), CartPage(), AboutPage(), ProfilePage()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Navigation App'),),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.black,
        iconSize: 50,
        showSelectedLabels: true,
        unselectedFontSize: 25,
        selectedFontSize: 25,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (value){
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_outlined), label: 'About'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
        ],
      ),
    );
  }
}
