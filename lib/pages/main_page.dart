import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:staycationapp/pages/favorite_page.dart';
import 'package:staycationapp/pages/home_page.dart';
import 'package:staycationapp/pages/person_page.dart';
import 'package:staycationapp/pages/setting_page.dart';
import 'package:staycationapp/shared/themes.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
  
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  // ignore: unused_local_variable, prefer_final_fields
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  // set index(int index) {}

  final screens = [
    HomePage(),
    FavoritePage(),
    SettingPage(),
    PersonPage(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.home,
        color: index == 0 ? kWhiteColor : kPrimaryColor,
        size: 30,
      ),
      Icon(
        Icons.favorite,
        color: index == 1 ? kWhiteColor : kPrimaryColor,
        size: 30,
      ),
      Icon(
        Icons.settings,
        color: index == 2 ? kWhiteColor : kPrimaryColor,
        size: 30,
      ),
      Icon(
        Icons.person,
        color: index == 3 ? kWhiteColor : kPrimaryColor,
        size: 30,
      ),
    ];
    return SafeArea(
      top: false,
      child: Scaffold(
        // transafaran problem solved navbar
        extendBody: true,
        backgroundColor: kWhiteColor,
        // appBar: AppBar(
        //   title: Text(
        //     'Curved Bottom Sheet',
        //   ),
        //   elevation: 0,
        //   centerTitle: true,
        // ),
        bottomNavigationBar: CurvedNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: kPrimaryColor,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          height: 60,
          key: navigationKey,
          index: index,
          items: [items[0], items[1], items[2], items[3]],
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: screens[index],
      ),
    );
  }
}