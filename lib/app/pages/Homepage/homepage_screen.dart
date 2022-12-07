import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/theme/colors.dart';
import 'package:get/get.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>{
  String url = 'http://192.168.8.159:3001';

  Future getReview() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String token = prefs.getString('token')!;
      var dio = Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers['accept'] = 'application/json';
      dio.options.headers['Authorization'] = 'Bearer $token';
      var response = await dio.get(url + '/review/');
      if (response.statusCode == 200){
        return response.data;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      if(e is DioError){
        print(e.response!.data);
      }
    }
  }
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
                                    Get.toNamed('/formKonseling');
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
                            FutureBuilder(
                              future: getReview(),
                              builder: (context, AsyncSnapshot snapshot) {
                                if(snapshot.hasData){
                                  return Container(
                                  height:210,
                                  child: ListView.builder(
                                    padding: EdgeInsets.all(5),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: snapshot.data.length,
                                    itemBuilder:(context, index) {
                                      return Container(
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
                                                      snapshot.data[index]['id_user']['username'],
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
                                                  snapshot.data[index]['rate'],
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
                                                      snapshot.data[index]['desc']
                                                    ),
                                                  )
                                               ], 
                                              ),
                                            ],
                                          ),
                                      );
                                    } 
                                  )
                                );
                                } else { 
                                  return Text("loading");
                                }
                              }
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