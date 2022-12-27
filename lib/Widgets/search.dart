import 'package:flutter/material.dart';
import 'package:searchbar_animation/const/dimensions.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBarAnimation(
      textEditingController: TextEditingController(),
      isOriginalAnimation: true,
      enableKeyboardFocus: true,
      isSearchBoxOnRightSide: true,
      durationInMilliSeconds: Dimensions.t200,
      trailingWidget: const Icon(
        Icons.search,
        size: 20,
        color: Colors.black,
      ),
      secondaryButtonWidget: const Icon(
        Icons.close,
        size: 20,
        color: Colors.black,
      ),
      buttonWidget: const Icon(
        Icons.search,
        size: 20,
        color: Colors.black,
      ),
    );
  }
}
