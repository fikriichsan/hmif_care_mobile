import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/app/pages/Homepage/homepage_screen.dart';
import 'package:hmif_care_mobile/app/pages/Kuisioner/kuisioner.dart';
import 'package:hmif_care_mobile/app/pages/Login/loginPage.dart';
import 'package:hmif_care_mobile/app/pages/News/newspage_screen.dart';
import 'package:hmif_care_mobile/app/pages/Review/review_screen.dart';
import 'package:hmif_care_mobile/app/pages/Welcome/welcome_screen.dart';
import 'package:hmif_care_mobile/app/pages/profile/profile_page.dart';
import 'package:hmif_care_mobile/app/pages/splashScreen.dart';
import 'package:hmif_care_mobile/app/pages/welcome1/welcome_kuisioner1.dart';
import 'package:hmif_care_mobile/app/pages/welcome2/welcome_screen2.dart';
import 'package:hmif_care_mobile/app/utils/theme/colors.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor: darkBlue,
        scaffoldBackgroundColor: Colors.white,

      ),
      getPages: [
        GetPage(
          name: '/login',
          page:() => LoginPage(),
        ),
        GetPage(
          name: '/home',
          page:() => HomePageScreen(),
        ),
        GetPage(
          name: '/welcomek',
          page:() => WelcomeScreen(),
        ),
        GetPage(
          name: '/petunjuk',
          page:() => WelcomeScreen2(),
        ),
        GetPage(
          name: '/form',
          page:() => KuisionerPage(),
        ),
        GetPage(
          name: '/news',
          page:() => NewsPage(),
        ),
        GetPage(
          name: '/review',
          page:() => ReviewScreen(),
        ),
        GetPage(
          name: '/profile',
          page:() => ProfilePage(),
        ),
        GetPage(
          name: '/profilel',
          page:() => LoginPage(),
        ),

      ],
      home: SplashScreen(),
    );
  }
}
