import 'package:flutter/material.dart';

class NewsBackground extends StatelessWidget {
  final Widget child;
  const NewsBackground({
    required this.child,
    this.background = "assets/images/background_news.png",
  });

  final String background;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(background),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(child: child)
          ],
        ),
      ),
    );
  }
}