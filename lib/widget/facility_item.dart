import 'package:flutter/material.dart';
import 'package:staycationapp/shared/themes.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int totel;

  FacilityItem({
    required this.name,
    required this.imageUrl,
    required this.totel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          width: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Text.rich(
          TextSpan(
            text: '$totel ',
            style: redTextStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(
                text: name,
                style: greyTextStyle.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
