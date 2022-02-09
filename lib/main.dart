import 'package:flutter/material.dart';
import 'package:staycationapp/pages/splash_page.dart';
import 'package:provider/provider.dart';
import 'package:staycationapp/providers/space_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (contex) => SpaceProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    )
    );
  }
}
