import 'package:bottom_navbar/screens/home_page.dart';
import 'package:bottom_navbar/screens/main_page.dart';
import 'package:flutter/material.dart';

main(){
  runApp(BottomNav());
}

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}


