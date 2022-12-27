import 'package:flutter/material.dart';
import 'package:food_dedlivery_app/Constants/Colors.dart';
import 'package:food_dedlivery_app/Models/Resturant.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callBack;
  final Resturant resturant;
  FoodList(this.callBack, this.resturant, this.selected);
  @override
  Widget build(BuildContext context) {
    final category = resturant.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 25),
          itemBuilder: ((context, index) => GestureDetector(
                onTap: () => callBack(index),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selected == index ? kPrimaryColor : Colors.white),
                  child: Text(
                    category[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
          itemCount: category.length),
    );
  }
}
