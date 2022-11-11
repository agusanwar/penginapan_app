import 'package:flutter/material.dart';
import 'package:staycationapp/models/space.dart';
import 'package:staycationapp/pages/error_page.dart';
import 'package:staycationapp/shared/themes.dart';
import 'package:staycationapp/widget/facility_item.dart';
import 'package:staycationapp/widget/rating_item.dart';
import 'package:url_launcher/url_launcher.dart';

const String url = 'https://flutter.dev';

class DetailPage extends StatefulWidget {
  final Space space;

  DetailPage(this.space);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isLightMode = true;
  bool isWishlist = false;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    launchUrl(url) async => await canLaunch(url)
        ? await launch(url)
        // throw
        : Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ErrorPage(),
            ),
          );

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              widget.space.imageUrl,
              height: 350,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 320,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    color: isLightMode ? kWhiteColor : kBlackColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                // Text(
                                //   'Mode',
                                //   style: blackTextStyle.copyWith(
                                //       fontSize: 16, fontWeight: semiBold),
                                // ),
                              ],
                            ),
                            // Switch Mode dark mode or white mode
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isLightMode = !isLightMode;
                                });
                              },
                              child: Container(
                                width: 90,
                                height: 45,
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: isLightMode
                                        ? kBackgroundColor
                                        : kGreyColor),
                                child: Align(
                                  alignment: isLightMode
                                      ? Alignment.centerLeft
                                      : Alignment.centerRight,
                                  child: Image.asset(isLightMode
                                      ? 'assets/icon_switch_dark.png'
                                      : 'assets/icon_switch_light.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.space.name,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                    color:
                                        isLightMode ? kBlackColor : kWhiteColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '\$${widget.space.price}',
                                    style: redTextStyle.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                        text: ' / Days',
                                        style: greyTextStyle.copyWith(
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [1, 2, 3, 4, 5].map((index) {
                                return Container(
                                  margin: EdgeInsets.only(left: 2),
                                  child: RatningItem(
                                    index: index,
                                    rating: widget.space.rating,
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      //MAIN PCILITI
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Text(
                          'Facilies Area',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                            color: isLightMode ? kBlackColor : kWhiteColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              name: 'Hours',
                              imageUrl: 'assets/swimming.png',
                              totel: 24,
                            ),
                            FacilityItem(
                              name: 'Hours',
                              imageUrl: 'assets/skateboard.png',
                              totel: 12,
                            ),
                            FacilityItem(
                              name: 'Hours',
                              imageUrl: 'assets/football.png',
                              totel: 24,
                            ),
                            FacilityItem(
                              name: 'Hours',
                              imageUrl: 'assets/basket.png',
                              totel: 12,
                            ),
                          ],
                        ),
                      ),
                      // PHOTO
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Text(
                          'Photo',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                            color: isLightMode ? kBlackColor : kWhiteColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 90,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: widget.space.photos.map((item) {
                            return Container(
                              margin: EdgeInsets.only(left: 24),
                              // CLIPRREACT FOR IMAGE RADIUS
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  item,
                                  width: 110,
                                  height: 90,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }).toList(),
                          // [
                          //   SizedBox(
                          //     width: 25,
                          //   ),
                          //   Image.asset(
                          //     'assets/space1.png',
                          //     width: 110,
                          //     height: 90,
                          //     fit: BoxFit.cover,
                          //   ),
                          //   SizedBox(
                          //     width: 20,
                          //   ),
                          //   Image.asset(
                          //     'assets/space2.png',
                          //     width: 110,
                          //     height: 90,
                          //     fit: BoxFit.cover,
                          //   ),
                          //   SizedBox(
                          //     width: 20,
                          //   ),
                          //   Image.asset(
                          //     'assets/space5.png',
                          //     width: 110,
                          //     height: 90,
                          //     fit: BoxFit.cover,
                          //   ),
                          //   SizedBox(
                          //     width: 24,
                          //   ),
                          // ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // LOCATION
                      Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Text(
                          'Location Area',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                            color: isLightMode ? kBlackColor : kWhiteColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${widget.space.address}\n${widget.space.city}',
                              // 'jln. pananjung no. 25\npantai barat pangandaran',
                              style: greyTextStyle.copyWith(fontSize: 16),
                            ),
                            InkWell(
                              onTap: () {
                                // call url google map
                                // launchUrl(
                                //     'https://www.google.co.id/maps/place/Pananjung,+Kec.+Pangandaran,+Kabupaten+Ciamis,+Jawa+Barat/@-7.6804786,108.6317033,14z/data=!3m1!4b1!4m5!3m4!1s0x2e65984f644bad39:0x6655c1eb7e459155!8m2!3d-7.678316!4d108.6502218');
                                // launchUrl('https://goo.gl/maps/SyZx2YjWB1yR6AeHB');
                                launchUrl(widget.space.mapUrl);
                              },
                              child: Image.asset(
                                'assets/btn_location.png',
                                height: 40,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * 20),
                        // ignore: deprecated_member_use
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            // call url phone
                            launchUrl('tel:{space.phone}');
                            // launchUrl('tel:+6281291896643');
                          },
                          child: Text(
                            'Book Now',
                            style: whiteTextStyle.copyWith(fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      // back screen
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isWishlist = !isWishlist;
                      });
                    },
                    child: Image.asset(
                      isWishlist
                          ? 'assets/btn_wishlist_red.png'
                          : 'assets/btn_wishlist.png',
                      width: 40,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
