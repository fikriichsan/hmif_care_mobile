import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/constants.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(),
                      ),
                      Expanded(
                        flex: 12,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 30,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/logo_hmifcare.png",
                                  width: 120,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(2),
                                  width: size.width*0.846,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: darkBlue,
                                    borderRadius: BorderRadius.all(Radius.circular(10),),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/homepage_icon.png",
                                        width: 90,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Form Konsultasi",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                                ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Ingin memeriksakan keadaan",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                                ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Anda lebih lanjut?",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                                ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Yuk Konsul",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 30,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                  Text(
                                    "Trending News",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(),
                      ),
                    ],
                  ),
                  
                ],
              )
            )
          ],
          )
        )
    );
  }
}