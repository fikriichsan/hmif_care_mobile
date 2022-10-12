import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/app/pages/Welcome/welcome_screen.dart';
import 'package:hmif_care_mobile/main.dart';
import 'package:hmif_care_mobile/app/pages/Login/loginPage.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => WelcomePageScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/image/logo_hmifcare.png',
            width: 250,
            height: 100,
          ),
          Text(
            "Your truly caring partner",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14.0),
          )
        ],
      )),
    );
  }
}
