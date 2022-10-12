import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Image.asset(
                "assets/image/logo_hmifcare.png",
              ),
        ),
       
      ],
    );
  }
}