import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
    this.shapeOne = "assets/image/shape_login1.png",
    this.shapeTwo = "assets/image/shape_login2.png",
  }) : super(key: key);

  final String shapeOne, shapeTwo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    shapeOne,
                    width: 120,
                  ),
                ),
                Positioned(
                  top: 350,
                  right: 0,
                  child: Image.asset(shapeTwo, width: 150),
                ),
                SafeArea(child: child)
              ],
            )));
  }
}
