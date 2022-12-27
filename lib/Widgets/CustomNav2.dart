import 'package:flutter/material.dart';

class Temels extends StatelessWidget {
  final IconData backicon;
  Temels(this.backicon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _BuildIcon(backicon),
        ],
      ),
    );
  }

  Widget _BuildIcon(IconData icon) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(icon));
  }
}
