import 'package:flutter/material.dart';
import 'package:staycationapp/models/space.dart';
import 'package:staycationapp/shared/themes.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: 130,
            height: 100,
            child: Stack(
              children: [
                Image.asset(
                  space.imageUrl,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon_star.png',
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '${space.rating}',
                          style: whiteTextStyle.copyWith(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              space.name,
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              '${space.city} , ${space.country}',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text.rich(TextSpan(
                text: '\$${space.price}',
                style: redTextStyle.copyWith(fontSize: 16),
                children: [
                  TextSpan(
                    text: ' /month',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ]))
          ],
        )
      ],
    );
  }
}
