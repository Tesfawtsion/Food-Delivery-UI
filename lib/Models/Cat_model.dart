import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imgurl;
  const Category({
    required this.name,
    required this.imgurl,
  });

  @override
  List<Object?> get props => [name, imgurl];

  static List<Category> categories = [
    Category(
        name: 'PizzaHut',
        imgurl:
            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hlh070122feafastfood-001-1657557014.jpg'),
    Category(
        name: 'Burger King',
        imgurl:
            'https://c8.alamy.com/compfr/jxtr2e/burger-king-de-repas-de-l-enrubanneuse-double-cheeseburger-avec-frites-et-un-grand-verre-avec-de-la-paille-sur-fond-blanc-isole-usa-jxtr2e.jpg'),
    Category(
        name: 'Baked pancake',
        imgurl:
            'https://images.unsplash.com/photo-1528207776546-365bb710ee93?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80'),
  ];
}
