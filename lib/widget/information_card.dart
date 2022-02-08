import 'package:flutter/material.dart';
import 'package:staycationapp/models/info.dart';
import 'package:staycationapp/shared/themes.dart';

class InfoCard extends StatelessWidget {
  final Info info;

  InfoCard(this.info);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          info.imageUrl,
          height: 80,
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              info.title,
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
             'Updated ${info.updateAt}',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: kGreyColor,
          ),
        ),
      ],
    );
  }
}
