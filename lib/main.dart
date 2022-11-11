import 'package:flutter/material.dart';
import 'package:staycationapp/pages/favorite_page.dart';
// ignore: unused_import
import 'package:staycationapp/pages/home_page.dart';
import 'package:staycationapp/pages/main_page.dart';
import 'package:staycationapp/pages/onboarding_page.dart';
import 'package:staycationapp/pages/person_page.dart';
import 'package:staycationapp/pages/setting_page.dart';
import 'package:staycationapp/pages/splashPage.dart';
// import 'package:staycationapp/pages/splash_page.dart';
import 'package:provider/provider.dart';
import 'package:staycationapp/providers/space_provider.dart';

void main() async {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (contex) => SpaceProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Splash(),
          '/onboarding': (context) => OnBoardingPage(),
          '/home': (context) => HomePage(),
          '/favorite': (context) => FavoritePage(),
          '/settings': (context) => SettingPage(),
          '/person': (context) => PersonPage(),
          '/main': (context) => MainPage(),
        },
      ),
    );
  }
}
