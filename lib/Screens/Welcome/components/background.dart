import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key? key, required this.child}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/landing_left.png", 
              width: size.width *0.45,)),
          Positioned(
            top: 160,
            right: 0,
            child: Image.asset(
              "assets/images/landing_right.png", 
              width: size.width * 0.45,)),
          Positioned(
            top: 160,
            child: Image.asset(
              "assets/images/landing_saly.png"
              , width: size.width * 0.45,)),
          Positioned(
            top: 345,
            child: Image.asset("assets/images/logoHmif.png")),
          Positioned(
            top: 490,
            child: Text("Are You Ready To Know Yourself")),
          Positioned(
            top: 510,
            child: Text("More Deeper")),
          Positioned(
            top: 636,
            child: Container(
              width: size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {}, child: Text("Get Sarted"), 
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor, 
                  onPrimary: Colors.white, 
                  padding: EdgeInsets.symmetric(
                    vertical: 20, 
                    horizontal: 40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),))),
          child,
          ],
      ),
    );
  }
}