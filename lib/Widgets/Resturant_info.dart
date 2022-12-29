import 'package:flutter/material.dart';
import 'package:food_dedlivery_app/Models/Resturant.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/Colors.dart';

class ResturantInfo extends StatelessWidget {
  ResturantInfo({super.key});
  final resturant = Resturant.generatResturant();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    resturant.name,
                    style: GoogleFonts.roboto(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.withOpacity(0.4)),
                          child: Center(
                              child: Text(
                            resturant.WiatTime,
                            style: TextStyle(color: Colors.white),
                          ))),
                      SizedBox(
                        width: 10,
                      ),
                      Text(resturant.distance,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.withOpacity(0.4))),
                      SizedBox(
                        width: 10,
                      ),
                      Text(resturant.lable,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.withOpacity(0.4))),
                    ],
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  resturant.logoUrl,
                  width: 80,
                ),
              )
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Text(
          //       '"${resturant.desc}"',
          //       style: TextStyle(fontSize: 16),
          //     ),
          //     // Row(
          //     //   children: [
          //     //     Icon(
          //     //       Icons.star_outline,
          //     //       color: kPrimaryColor,
          //     //     ),
          //     //     Text(
          //     //       '${resturant.Score}',
          //     //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          //     //     ),
          //     //     SizedBox(
          //     //       width: 15,
          //     //     ),
          //     //   ],
          //     // )
          //   ],
          // )
        ],
      ),
    );
  }
}
