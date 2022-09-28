import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/constants.dart';

class BackgroundLogin extends StatelessWidget {
  final Widget child;
  const BackgroundLogin({Key? key, required this.child}) : super(key: key); 
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
              "assets/images/signup_left.png", 
              width: 134.5,)),
          Positioned(
            top: 303,
            right: 0,
            child: Image.asset(
              "assets/images/signup_right.png", 
              width: 134.5,)),
          child,
          ],
      ),
    );
  }
}