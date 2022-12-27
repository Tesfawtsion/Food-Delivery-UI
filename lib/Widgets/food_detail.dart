import 'package:flutter/material.dart';
import 'package:food_dedlivery_app/Constants/Colors.dart';

import '../Models/Food.dart';
import 'food_quantity.dart';

class FoodDetail extends StatelessWidget {
  final Food food;
  FoodDetail(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      padding: EdgeInsets.all(20),
      color: kBackground,
      child: Column(
        children: [
          Text(
            food.name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(
                  Icons.access_time_outlined, Colors.blue, food.WiatTime),
              _buildIconText(Icons.star_border_outlined, kPrimaryColor,
                  food.score.toString()),
              _buildIconText(
                  Icons.local_fire_department_outlined, Colors.red, food.cal)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          FoodQuantity(food),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Ingredients',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Image.asset(
                            food.ingredients[index].values.first,
                            width: 52,
                          ),
                          Text(food.ingredients[index].keys.first)
                        ],
                      ),
                    )),
                separatorBuilder: (_, index) => SizedBox(
                      width: 15,
                    ),
                itemCount: food.ingredients.length),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'About',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(food.about,
              style: TextStyle(fontSize: 16, wordSpacing: 1.2, height: 1.5)),
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: color,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
