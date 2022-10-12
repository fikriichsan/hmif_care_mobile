import 'package:flutter/material.dart';

class BackgroundLanding extends StatelessWidget {
  final Widget child;
  const BackgroundLanding({Key? key, required this.child}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/landing_left.png",
                width: size.width *0.40,
              ),
            ),
            Positioned(
              top: 120,
              right: 0,
              child: Image.asset(
                "assets/images/landing_right.png",
                width: size.width *0.40,
              ),
            ),
          child,
          ],
        ),
      )
    );
  }
} 