import 'package:flutter/material.dart';
import 'components/kuisionerImage2.dart';
import '../../components/background.dart';
import 'components/box_kuisioner2.dart';

import '../components/logoImage.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const LogoImage(),
              const KuisionerImage2(),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.bottomCenter,
                    child: const BoxKuisioner2(),
                  ),
            ],
        ),
      ),
    );
  }
}


