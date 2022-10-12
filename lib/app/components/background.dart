import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
    this.topImage = "assets/image/main_top.png",
    this.bottomImage = "assets/image/left.png",
    this.rightImage = "assets/image/shape_login2.png",
  }) : super(key: key);

  final String topImage, bottomImage, rightImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                topImage,
                alignment: Alignment.topLeft,
                width: 200,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(bottomImage,
                  alignment: Alignment.bottomRight, width: 200),
            ),
            Positioned(
              right: 0,
              child: Image.asset(rightImage,
                  alignment: Alignment.centerRight, width: 200),
            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
