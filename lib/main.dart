import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/Screens/Homepage/homepage_screen.dart';
import 'package:hmif_care_mobile/Screens/Login/login_secreen.dart';
import 'package:hmif_care_mobile/constants.dart';

import 'Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePageScreen(),
    );
  }
}
