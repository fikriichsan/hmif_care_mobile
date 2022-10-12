import 'package:flutter/material.dart';

class KuisionerImage2 extends StatelessWidget {
  const KuisionerImage2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Image.asset(
                "assets/image/pic-kuis2.png",
                width: 200,
                height: 200,
              ),
        ),
      ],
    );
  }
}