import 'package:flutter/material.dart';
import 'package:staycationapp/shared/themes.dart';

class OnBoardingItem extends StatelessWidget {
  final String imageeUrl;
  final String title;
  final String subTitle;
  
  const OnBoardingItem({
    Key? key,
    required this.imageeUrl,
    required this.title,
    required this.subTitle,

    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
        ),
        Image.asset(
          imageeUrl,
          width: double.infinity,
        ),
        SizedBox(
          height: 120,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          subTitle,
          style: greyTextStyle.copyWith(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
