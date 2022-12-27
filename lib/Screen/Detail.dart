import 'package:flutter/material.dart';
import 'package:food_dedlivery_app/Constants/Colors.dart';
import 'package:food_dedlivery_app/Screen/Home.dart';
import 'package:food_dedlivery_app/Widgets/CustomNav2.dart';
import 'package:food_dedlivery_app/Widgets/custom_nav.dart';
import 'package:food_dedlivery_app/Widgets/food_detail.dart';
import 'package:food_dedlivery_app/Widgets/food_img.dart';
import 'package:food_dedlivery_app/Widgets/food_quantity.dart';

import '../Models/Food.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  const DetailPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Temels(Icons.arrow_back_ios_new_outlined)),
              CustomAppBar(
                Icons.favorite_border_outlined,
              ),
            ],
          ),
          FoodImage(food),
          FoodDetail(food),
        ]),
      ),
      floatingActionButton: SizedBox(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          onPressed: (() {}),
          fillColor: kPrimaryColor,
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: Text(
                  food.quantity.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
