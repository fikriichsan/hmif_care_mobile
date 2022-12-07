import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/app/utils/theme/colors.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen>{
  String url = 'http://10.160.118.242:3001';

  Future addReview() async {
    try {
      SharedPreferences review = await SharedPreferences.getInstance();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      SharedPreferences akun = await SharedPreferences.getInstance();
      String jenisKonseling = review.getString("jenis_konseling")!;
      String jadwalKonseling = review.getString("jadwal_konseling")!;
      String sesiKonseling = review.getString("sesi_konseling")!;
      String mediaKonseling = review.getString("sesi_konseling")!;
      String id_Konseling = review.getString("id_konseling")!;
      String id_user = review.getString("id")!;
      String token = prefs.getString("token")!;
    } catch (e) {
        print(e);
        return(e);
    }
  }
  @override
  Widget build(BuildContext context) {
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
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/logo_hmifcare.png",
                                  width: 120,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                    padding: EdgeInsets.all(20),
                                    margin: EdgeInsets.only(bottom: 30),
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
                                              Text(
                                                "Konseling Pertama",
                                                style: TextStyle(
                                                  color: darkBlue,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Jum'at, 23 September 2022",
                                                style: TextStyle(
                                                  color: darkBlue,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "11.30 - 12.30 WITA",
                                                style: TextStyle(
                                                  color: darkBlue,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Topik Karier",
                                                style: TextStyle(
                                                  color: middleBrown,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "dengan Bu Anissa, S.Psi., M.Psi",
                                                style: TextStyle(
                                                  color: middleBrown,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                  ),
                            Container(
                                    padding: EdgeInsets.all(20),
                                    margin: EdgeInsets.only(bottom: 30),
                                    decoration: BoxDecoration(
                                      color: lightBrown,
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
                                              Text(
                                                "Konseling yang dilakukan",
                                                style: TextStyle(
                                                  color: darkBrown,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Divider(
                                            color: darkBrown,
                                          ),
                                          TextField(
                                            keyboardType: TextInputType.multiline,
                                            maxLines: 6,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: darkBrown,
                                            ),
                                            decoration: InputDecoration(
                                              hintText: "Bagikan Penilaianmu dan bantu Pengguna lain membuat pilihan yang lebih baik",
                                              border: InputBorder.none
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                            Container(
                                            width: 80,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Get.toNamed('/home');
                                              },
                                              child: Text("Kirim"),
                                              style: ElevatedButton.styleFrom(
                                                primary: darkBrown,
                                                onPrimary: Colors.white,
                                                padding: EdgeInsets.all(10),
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))
                                              ),
                                            ),
                                          ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ) 
      ),
    );
  }
}