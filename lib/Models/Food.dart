class Food {
  String name;
  String desc;
  String WiatTime;
  String cal;
  String imageUrl;
  num score;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highLight;
  Food(this.imageUrl, this.desc, this.name, this.WiatTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.highLight = false});
  static List<Food> generatRecommendedFoods() {
    return [
      Food(
          'lib/images/dish1.png',
          'No1 in Sales',
          'Soba Soup',
          '50min',
          4.8,
          '325 kal',
          12,
          1,
          [
            {'Noodle': 'lib/images/ingre1.png'},
            {'Shripm': 'lib/images/ingre2.png'},
            {'Egg': 'lib/images/ingre3.png'},
            {'Scalloni': 'lib/images/ingre4.png'},
          ],
          'Simply put, ramen is a japnies Noodle soup,with berbere amsgjah josaodey nsdkasihdyw alshdiyw alkshdiuq jak  ',
          highLight: true),
      Food(
          'lib/images/dish2.png',
          'Low Fat',
          'Sai Ua Samun Phari',
          '50min',
          4.8,
          '325 kal',
          18,
          0,
          [
            {'Noodle': 'lib/images/ingre1.png'},
            {'Shripm': 'lib/images/ingre2.png'},
            {'Egg': 'lib/images/ingre3.png'},
            {'Scalloni': 'lib/images/ingre4.png'},
          ],
          'Simply put, ramen is a japnies Noodle soup,with berbere '),
      Food(
          'lib/images/dish3.png',
          'Heighly Recomeneded',
          'Wagwan Man',
          '30min',
          4.8,
          '325 kal',
          12,
          1,
          [
            {'Noodle': 'lib/images/ingre1.png'},
            {'Shripm': 'lib/images/ingre2.png'},
            {'Egg': 'lib/images/ingre3.png'},
            {'Scalloni': 'lib/images/ingre4.png'},
          ],
          'Simply put, ramen is a japnies Noodle soup,with berbere ')
    ];
  }

  static List<Food> generatPopularFood() {
    return [
      Food(
          'lib/images/dish4.png',
          'Most Popular',
          'Tomato Chicken',
          '50min',
          4.8,
          '325 kal',
          12,
          1,
          [
            {'Noodle': 'lib/images/ingre1.png'},
            {'Shripm': 'lib/images/ingre2.png'},
            {'Egg': 'lib/images/ingre3.png'},
            {'Scalloni': 'lib/images/ingre4.png'},
          ],
          'Simply put, ramen is a japnies Noodle soup,with berbere '),
      Food(
          'lib/images/dish3.png',
          'Heighly Recomeneded',
          'Wagwan Man',
          '30min',
          4.8,
          '325 kal',
          12,
          1,
          [
            {'Noodle': 'lib/images/ingre1.png'},
            {'Shripm': 'lib/images/ingre2.png'},
            {'Egg': 'lib/images/ingre3.png'},
            {'Scalloni': 'lib/images/ingre4.png'},
          ],
          'Simply put, ramen is a japnies Noodle soup,with berbere ')
    ];
  }
}
