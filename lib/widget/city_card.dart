import 'package:flutter/material.dart';
import 'package:staycationapp/models/city.dart';
import 'package:staycationapp/shared/themes.dart';

class CityCard extends StatelessWidget {
 final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            // Add Widget Stack, First Add widget Coulmn
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 145,
                  fit: BoxFit.cover,
                ),
                
                city.isPopular ? Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icon_star.png',
                        width: 22,
                        height: 22,
                      ),
                    ),
                  ),
                ) : Container(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              city.name,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
