import 'package:flutter/material.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/constants.dart';

class BodyUpLogin extends StatelessWidget {
  const BodyUpLogin({
    Key? key,
    required this.titlePage,
  }) : super(key: key);

  final String titlePage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 56),
            child: Column(
              children: [
                Image.asset(
                  'assets/image/logoKecil.png',
                  width: 96,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      titlePage,
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ).copyWith(color: middleBrown),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/image/illustrasi_login.png',
                        width: 68,
                        height: 32.74,
                      )),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
