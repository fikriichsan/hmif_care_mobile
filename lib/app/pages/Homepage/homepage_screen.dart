import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/theme/colors.dart';
import 'package:get/get.dart';

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
                              children: const [
                                SizedBox(
                                  height: 30,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/logo_hmifcare.png",
                                  width: 120,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed('/profile');
                                  },
                                  child: Image.asset(
                                    "assets/images/profil.png",
                                    width: 70,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  height: 40,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed('/form');
                                  },
                                  child: Container(
                                  margin: const  EdgeInsets.all(2),
                                  width: size.width*0.846,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    color: darkBlue,
                                    borderRadius: BorderRadius.all(Radius.circular(10),),
                                  ),
                                  child: 
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/homepage_icon.png",
                                        width: 90,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: const [
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
                                            children: const [
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
                                            children: const[
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
                                            children: const[
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
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed('/review');
                                  },
                                  child: Container(
                                  margin: const EdgeInsets.all(2),
                                  width: size.width*0.846,
                                  padding: const EdgeInsets.symmetric(vertical: 20),
                                  decoration: const BoxDecoration(
                                    color: lightBlue,
                                    borderRadius: BorderRadius.all(Radius.circular(10),),
                                  ),
                                  child: 
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Tulis Feedback Konseling",
                                        style: TextStyle(
                                          color: white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
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
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed('/news');
                                    },
                                    child: Container(
                                      width: 300,
                                      height: 200,
                                      padding: EdgeInsets.fromLTRB(80, 10, 0, 0),
                                      margin: EdgeInsets.only(right: 16),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/item1.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 300,
                                    height: 200,
                                    padding: EdgeInsets.fromLTRB(80, 10, 0, 0),
                                    margin: EdgeInsets.only(right: 16),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/item1.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 300,
                                    height: 200,
                                    padding: EdgeInsets.fromLTRB(80, 10, 0, 0),
                                    margin: EdgeInsets.only(right: 16),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/item1.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 300,
                                    height: 200,
                                    padding: EdgeInsets.fromLTRB(80, 10, 0, 0),
                                    margin: EdgeInsets.only(right: 16),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/item1.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 300,
                                    height: 200,
                                    padding: EdgeInsets.fromLTRB(80, 10, 0, 0),
                                    margin: EdgeInsets.only(right: 16),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/item1.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Column(
                                  children: [
                                  Text(
                                    "Kata Mereka Tentang HMIF Care",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 30),
                            Container(
                              height:210,
                              child: ListView(
                                padding: EdgeInsets.all(5),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    width: 180,
                                    padding: EdgeInsets.all(15),
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 3.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0, 2.0),
                                          )]
                                    ),
                                    child: 
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/profil.png",
                                                width: 50,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                width: 80,
                                                child: Text(
                                                  "Bambang Pamungkas",
                                                  maxLines: 2,),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                           children: [
                                            Text(
                                              "  Sangat Baik",
                                              style: TextStyle(
                                                color: darkBlue,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                           ], 
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                           children: [
                                              Container(
                                                width: 125,
                                                padding: EdgeInsets.only(left: 9),
                                                child: Text(
                                                  "Konsultasinya sangat asik dan termotivasi"
                                                ),
                                              )
                                           ], 
                                          ),
                                        ],
                                      ),
                                  ),
                                  Container(
                                    width: 180,
                                    padding: EdgeInsets.all(15),
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 3.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0, 2.0),
                                          )]
                                    ),
                                    child: 
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/profil.png",
                                                width: 50,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                width: 80,
                                                child: Text(
                                                  "Bambang Yudho",
                                                  maxLines: 2,),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                           children: [
                                            Text(
                                              "  Baik",
                                              style: TextStyle(
                                                color: darkBlue,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                           ], 
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                           children: [
                                              Container(
                                                width: 125,
                                                padding: EdgeInsets.only(left: 9),
                                                child: Text(
                                                  "Konsultasinya sangat asik dan termotivasi"
                                                ),
                                              )
                                           ], 
                                          ),
                                        ],
                                      ),
                                  ),
                                ],
                              )
                            ),
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