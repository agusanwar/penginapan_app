import 'package:flutter/material.dart';
import 'package:staycationapp/shared/themes.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/thumbnail.png',
        height: 80,
        ),
        SizedBox(
          width: 15,
        ),
        Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('city',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold
            ),
            ),
            SizedBox(
              height: 5,
            ),
            Text('update info',
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.chevron_right,
            color: kGreyColor,
          ),
        ),
      ],
    );
  }
}
