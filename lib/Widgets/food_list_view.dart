import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_dedlivery_app/Models/Resturant.dart';
import 'package:food_dedlivery_app/Screen/Detail.dart';

import 'food_item.dart';

class FoodListView extends StatelessWidget {
  FoodListView(
      this.selected, this.callBack, this.pageController, this.resturant);
  final Function callBack;
  final Resturant resturant;
  final PageController pageController;
  final int selected;

  @override
  Widget build(BuildContext context) {
    final category = resturant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callBack(index),
        children: category
            .map((e) => ListView.separated(
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(
                              resturant.menu[category[selected]]![index])));
                    },
                    child:
                        FoodItem(resturant.menu[category[selected]]![index])),
                separatorBuilder: (_, index) => SizedBox(
                      height: 15,
                    ),
                itemCount: resturant.menu[category[selected]]!.length))
            .toList(),
      ),
    );
  }
}
