// ignore: unused_import
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:staycationapp/models/city.dart';
import 'package:staycationapp/models/info.dart';
import 'package:staycationapp/models/space.dart';
import 'package:staycationapp/providers/space_provider.dart';
import 'package:staycationapp/shared/themes.dart';
// import 'package:staycationapp/widget/bottom_navbar_item.dart';
import 'package:staycationapp/widget/city_card.dart';
import 'package:staycationapp/widget/information_card.dart';
import 'package:staycationapp/widget/space_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    // spaceProvider.getRecomondedSpaces();
    return Scaffold(
      backgroundColor: kUnvailableColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          // TITTLE : HEADER
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Discover',
                style:
                    blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
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
                style:
                    blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
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
                        name: 'Green Canyon',
                        imageUrl: 'assets/space3.png',
                        isPopular: false),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 2,
                        name: 'Pangandaran',
                        imageUrl: 'assets/space4.png',
                        isPopular: true),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 3,
                        name: 'Batu Hiu',
                        imageUrl: 'assets/space1.png',
                        isPopular: false),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 4,
                      name: 'Karapyak',
                      imageUrl: 'assets/space2.png',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 5,
                        name: 'Madasari',
                        imageUrl: 'assets/space5.png',
                        isPopular: true),
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
                'Staycation Recommendation',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FutureBuilder(//<List<Space>>
                future: spaceProvider.getRecomondedSpaces(),
                builder: (BuildContext context, AsyncSnapshot snapshot) { //AsyncSnapshot<List<Space>>
                  if (snapshot.hasData) { 
                    List<Space> data = snapshot.data ?? [];

                    int index = 0;

                    return Column(
                      children: data.map((item) {
                        index++;
                        return Container(
                          child: SpaceCard(item),
                          margin: EdgeInsets.only(
                            top: index == 1 ? 0 : 30
                          ),
                        );
                      }).toList(),
                    );
                    // return Column(
                    //   children: [
                    //     SpaceCard(
                    //       Space(
                    //         id: 1,
                    //         name: 'Minimalis House',
                    //         imageUrl: 'assets/space1.png',
                    //         price: 120,
                    //         rating: 4,
                    //         city: 'Panajung',
                    //         country: 'Pangandaran',
                    //         photos: [],
                    //         phones: '',
                    //         address: '',
                    //         mapUrl: '',
                    //          numberOfKitchens: 1,
                    //          numberOfCupboards: 1,
                    //          numberOfbadrooms: 1,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       height: 30,
                    //     ),
                    //     SpaceCard(
                    //       Space(
                    //         id: 2,
                    //         name: 'Minimalis House',
                    //         imageUrl: 'assets/space2.png',
                    //         price: 120,
                    //         rating: 5,
                    //         city: 'Panajung',
                    //         country: 'Pangandaran',
                    //         photos: [],
                    //         phones: '',
                    //         address: '',
                    //         mapUrl: '',
                    //          numberOfKitchens: 1,
                    //          numberOfCupboards: 1,
                    //          numberOfbadrooms: 1,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       height: 30,
                    //     ),
                    //     SpaceCard(
                    //       Space(
                    //         id: 3,
                    //         name: 'Minimalis House',
                    //         imageUrl: 'assets/space3.png',
                    //         price: 120,
                    //         rating: 4,
                    //         city: 'Panajung',
                    //         country: 'Pangandaran',
                    //         photos: [],
                    //         phones: '',
                    //         address: '',
                    //         mapUrl: '',
                    //          numberOfKitchens: 1,
                    //          numberOfCupboards: 1,
                    //          numberOfbadrooms: 1,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       height: 30,
                    //     ),
                    //     SpaceCard(
                    //       Space(
                    //         id: 4,
                    //         name: 'Minimalis House',
                    //         imageUrl: 'assets/space4.png',
                    //         price: 120,
                    //         rating: 4,
                    //         city: 'Panajung',
                    //         country: 'Pangandaran',
                    //         photos: [],
                    //         phones: '',
                    //         address: '',
                    //         mapUrl: '',
                    //          numberOfKitchens: 1,
                    //          numberOfCupboards: 1,
                    //          numberOfbadrooms: 1,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       height: 30,
                    //     ),
                    //   ],
                    // );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
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
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  InfoCard(
                    Info(
                        id: 1,
                        imageUrl: 'assets/kembang_api.png',
                        title: 'Pesta Kembang Api',
                        updateAt: '1 feb'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InfoCard(
                    Info(
                        id: 2,
                        imageUrl: 'assets/layangan.png',
                        title: 'Pesta Laut Pangandaran ',
                        updateAt: '20 feb'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60 + 20,
            ),
          ],
        ),
      ),
      // floatingActionButton: Container(
      //   height: 60,
      //   width: MediaQuery.of(context).size.width - (2 * 20),
      //   margin: EdgeInsets.symmetric(
      //     horizontal: 20,
      //   ),
      //   decoration: BoxDecoration(
      //     color: kWhiteColor,
      //     borderRadius: BorderRadius.circular(30),
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       BottomNavbar(
      //         imageUrl: 'assets/icon_home.png',
      //         isActive: true,
      //       ),
      //       BottomNavbar(
      //         imageUrl: 'assets/icon_message.png',
      //         isActive: false,
      //       ),
      //       BottomNavbar(
      //         imageUrl: 'assets/icon_card.png',
      //         isActive: false,
      //       ),
      //       BottomNavbar(
      //         imageUrl: 'assets/icon_love.png',
      //         isActive: false,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
