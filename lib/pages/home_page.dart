import 'package:flutter/material.dart';
import 'package:staycationapp/models/city.dart';
import 'package:staycationapp/models/space.dart';
import 'package:staycationapp/shared/themes.dart';
import 'package:staycationapp/widget/city_card.dart';
import 'package:staycationapp/widget/information_card.dart';
import 'package:staycationapp/widget/space_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
       child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: ListView(
          // TITTLE : HEADER
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Discover',
                style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
              ),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            // Padding(
            //   padding: EdgeInsets.only(left: 24),
            //   child: Text(
            //     'Mencari kostan yang keren',
            //     style: greyTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            //   ),
            // ),
            SizedBox(
              height: 50,
            ),
            // POPULAR CITY
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Popular House',
                style: blackTextStyle.copyWith(
                  fontSize: 20, 
                  fontWeight: semiBold
                  ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 24),
                  CityCard(
                    City(
                      id: 1,
                      name: 'jakarta',
                      imageUrl: 'assets/photos1.png',
                      isPopular: false),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 2,
                      name: 'bandung',
                      imageUrl: 'assets/photos1.png',
                       isPopular: true
                       ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'surabaya',
                      imageUrl: 'assets/photos1.png',
                       isPopular: false),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 4,
                      name: 'bali',
                      imageUrl: 'assets/photos1.png',
                       isPopular: true,
                       ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 5,
                      name: 'pangandaran',
                      imageUrl: 'assets/photos1.png',
                       isPopular: true
                       ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(width: 24),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // RECOMENDED
              Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Recomdender Space',
                style: blackTextStyle.copyWith(
                  fontSize: 16, 
                  fontWeight: semiBold
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Column(
                  children: [
                    SpaceCard(
                      Space(
                        id: 1,
                        name: 'Minimalis House',
                        imageUrl: 'assets/space1.png',
                        price: 120,
                        rating: 4,
                        city: 'Panajung',
                        country: 'Pangandaran',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                        id: 2,
                        name: 'Minimalis House',
                        imageUrl: 'assets/space2.png',
                        price: 120,
                        rating: 5,
                        city: 'Panajung',
                        country: 'Pangandaran',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                        id: 3,
                        name: 'Minimalis House',
                        imageUrl: 'assets/space3.png',
                        price: 120,
                        rating: 4,
                        city: 'Panajung',
                        country: 'Pangandaran',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                        id: 4,
                        name: 'Minimalis House',
                        imageUrl: 'assets/space4.png',
                        price: 120,
                        rating: 4,
                        city: 'Panajung',
                        country: 'Pangandaran',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20
                ),
                child: Text(
                  'Tips & Information',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20
                ),
                child: Column(
                  children: [
                    InfoCard(),
                    SizedBox(
                      height: 20,
                    ),
                    InfoCard(),
                  ],
                ),
                ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
