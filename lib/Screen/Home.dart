import 'package:flutter/material.dart';
import 'package:food_dedlivery_app/Constants/Colors.dart';
import 'package:food_dedlivery_app/Models/Resturant.dart';
import 'package:food_dedlivery_app/Widgets/Resturant_info.dart';
import 'package:food_dedlivery_app/Widgets/food_list.dart';
import 'package:food_dedlivery_app/Widgets/img_slidder.dart';
import 'package:food_dedlivery_app/Widgets/search.dart';
import 'package:searchbar_animation/const/dimensions.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

import '../Widgets/custom_nav.dart';
import '../Widgets/food_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final resturant = Resturant.generatResturant();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Search(),
        ),
        ResturantInfo(),
        ImageSlider(),
        FoodList((int index) {
          setState(() {
            selected = index;
          });
          pageController.jumpToPage(index);
        }, resturant, selected),
        Expanded(
            child: FoodListView(selected, (int index) {
          setState(() {
            selected = index;
          });
        }, pageController, resturant))
      ],
    );

    // floatingActionButton: FloatingActionButton(
    //   onPressed: (() {}),
    //   backgroundColor: kPrimaryColor,
    //   elevation: 2,
    //   child: Icon(
    //     Icons.shopping_bag_outlined,
    //     color: Colors.black,
    //     size: 30,
    //   ),
    // ),
  }
}
