import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/constants.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column()
                      ),
                    Expanded(
                      flex: 12,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios_outlined,
                                color: darkBlue,
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                "Riwayat Konseling",
                                style: TextStyle(
                                  color: darkBlue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
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
                                    margin: EdgeInsets.only(bottom: 40),
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
                        ],
                      )
                      ),
                    Expanded(
                      flex: 1,
                      child: Column()
                      ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

}