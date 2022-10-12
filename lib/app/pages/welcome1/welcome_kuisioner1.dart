import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/app/pages/components/logoImage.dart';
import '../../components/background.dart';
// import 'responsive.dart';
import 'components/box_kuisioner1.dart';
import 'components/kuisionerImage.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Container(
              //   child: const LogoImage(),
              //   ),
              // Container(
              //   child: const KuisionerImage()
              //   ),
              // Column(
              //   chidlren:[
              //     Container()
              //     child:const WelcomeKuisioner()
              //   ],
              // ),
              const LogoImage(),
              const KuisionerImage(),
              // const WelcomeKuisioner(),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.bottomCenter,
                    child: const BoxKuisioner1(),
                  ),
            ],
        ),
      ),
    );
  }
}

// class MobileWelcomeScreen extends StatelessWidget {
//   const MobileWelcomeScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         const KuisionerImage(),
//         Row(
//           children: const [
//             Spacer(),
//             Expanded(
//               flex: 8,
//               child: Kuisionerbtn(),
//             ),
//             Spacer(),
//           ],
//         ),
//       ],
//     );
//   }
// }
