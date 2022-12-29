import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_dedlivery_app/Constants/Colors.dart';
import 'package:food_dedlivery_app/Models/Cat_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_dedlivery_app/Models/Resturant.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1.9,
        viewportFraction: 0.9,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        autoPlay: false,
      ),
      items: Category.categories
          .map((category) => HeroCourseCard(category: category))
          .toList(),
    ));
  }
}

class HeroCourseCard extends StatelessWidget {
  final resturant = Resturant.generatResturant();
  final Category category;
  HeroCourseCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          child: Stack(
            children: <Widget>[
              Image.network(category.imgurl,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.9),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.3),
                        Colors.white24.withOpacity(0.1)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(category.name,
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black87),
                        child: Text(
                          '\$12.5',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '4.8',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor.withOpacity(0.7)),
                  ),
                  Icon(
                    Icons.star_outline,
                    color: kPrimaryColor,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
