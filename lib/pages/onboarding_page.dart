import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:staycationapp/shared/themes.dart';
import 'package:staycationapp/widget/onboarding_item.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  // indicator screns
  int currentIndex = 0;
  //for setting carausel slidenya
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: [
                OnBoardingItem(
                  imageeUrl: 'assets/onboarding1.png',
                  title: 'Find Destionation',
                  subTitle:
                      'This application will make it easier\nfor you to be there while you are traveling',
                ),
                OnBoardingItem(
                  imageeUrl: 'assets/onboarding2.png',
                  title: 'Staycation area',
                  subTitle:
                      'This application will make it easier\nfor you to be there while you are traveling',
                ),
                OnBoardingItem(
                  imageeUrl: 'assets/onboarding3.png',
                  title: 'Fast Emergancy area',
                  subTitle:
                      'This application will make it easier\nfor you to be there while you are traveling',
                ),
              ],
              options: CarouselOptions(
                height: double.infinity,
                // for sccrens 1
                viewportFraction: 1,
                enableInfiniteScroll: false,
                // for change indicator
                initialPage: currentIndex,
                onPageChanged: (index, _) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              // for contrroler screens
              carouselController: controller,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // jump to next screen
                    controller.animateToPage(2);
                  },
                  child: Text(
                    'SKIP',
                    style: blackTextStyle.copyWith(fontSize: 18),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              currentIndex == 0 ? kPrimaryColor : kGreyColor),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              currentIndex == 1 ? kPrimaryColor : kGreyColor),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              currentIndex == 2 ? kPrimaryColor : kGreyColor),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    if (currentIndex == 2) {
                      Navigator.pushNamed(context, '/main');
                    } else {
                      controller.nextPage();
                    }
                  },
                  child: Text(
                    'NEXT',
                    style: blackTextStyle.copyWith(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
