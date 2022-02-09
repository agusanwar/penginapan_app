import 'package:flutter/material.dart';

class RatningItem extends StatelessWidget {
  final int index;
  final int rating;

  RatningItem({required this.index, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
     index <= rating ? 'assets/icon_star.png' : 'assets/icon_star_grey.png',
      width: 20,
    );
  }
}
