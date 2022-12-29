import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:food_dedlivery_app/Constants/Colors.dart';

import 'Screen/Cart.dart';
import 'Screen/Home.dart';

void main() {
  runApp(const MyApp());
}

enum _SelectedTab { home, favorite, search, person }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _selectedTab = _SelectedTab.home;
  var pages = [HomePage(), HomePage(), Cart()];
  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        extendBody: true,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: DotNavigationBar(
            borderRadius: 18,
            currentIndex: _SelectedTab.values.indexOf(_selectedTab),
            backgroundColor: Colors.red.withOpacity(1),
            dotIndicatorColor: kBackground,
            unselectedItemColor: Colors.white,
            onTap: _handleIndexChanged,
            items: [
              DotNavigationBarItem(
                icon: Icon(Icons.home),
                selectedColor: kPrimaryColor,
              ),
              DotNavigationBarItem(
                icon: Icon(Icons.favorite),
                selectedColor: kPrimaryColor,
              ),
              DotNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                selectedColor: kPrimaryColor,
              ),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: pages[_SelectedTab.values.indexOf(_selectedTab)],
      ),
    );
  }
}
