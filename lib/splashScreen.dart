import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/main.dart';

class SplashScreen extends StatefulWidget{

  _SplashScreen createState() => _SplashScreen();

}

class _SplashScreen extends State<SplashScreen>{

  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => MyHomePage(title: "hmif care",)),);
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

            Image.asset('assets/image/logoHmif.png', width: 250, height: 100,),

            Text("Your truly caring partner",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14.0
              ),
            )
          ],)),
    );
  }
}