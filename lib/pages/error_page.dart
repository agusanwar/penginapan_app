import 'package:flutter/material.dart';
import 'package:staycationapp/pages/home_page.dart';
import 'package:staycationapp/shared/themes.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/notpound.png',
                  width: 280,
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Your address does not exist',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 210,
                  height: 50,
                  // ignore: deprecated_member_use
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                          (route) => false);
                    },
                    child: Text(
                      'Back to Home',
                      style: whiteTextStyle.copyWith(
                          fontSize: 18, fontWeight: semiBold),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
