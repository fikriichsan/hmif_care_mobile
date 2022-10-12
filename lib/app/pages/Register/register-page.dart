import 'dart:ui';

import 'package:flutter/material.dart';

import '../../components/widget.dart';
import '../../utils/theme/constants.dart';
import '../../utils/theme/colors.dart';

import 'package:flutter/cupertino.dart';

// import '../utils/theme/font.dart';
import '../screen.dart';
import '../Login/components/login_up.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Background(
      child: CustomScrollView(
        reverse: false,
        slivers: <Widget>[
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Column(
                    children: [
                      BodyUpLogin(
                        titlePage: "Create Your Account",
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                            fit: FlexFit.loose,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 24,
                                ),
                                FieldName(fieldName: "Name"),
                                TheTextField(
                                  hintText: "Write Your Name",
                                  inputType: TextInputType.text,
                                ),
                                FieldName(fieldName: "NIM"),
                                TheTextField(
                                  hintText: "Write Your NIM",
                                  inputType: TextInputType.text,
                                ),
                                FieldName(fieldName: "Password"),
                                ThePasswordField(
                                  hintText: "Write Your Password",
                                ),
                                FieldName(fieldName: "Confirm Password"),
                                ThePasswordField(
                                  hintText: "Rewrite Your Password",
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Register"),
                            style: ElevatedButton.styleFrom(
                                primary: darkBlue,
                                onPrimary: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account? ",
                                style: kBodyText.copyWith(
                                  color: darkBlue,
                                  letterSpacing: 1,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                )),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              LoginPage(),
                                      transitionDuration: Duration.zero,
                                      reverseTransitionDuration: Duration.zero,
                                      // CupertinoPageRoute(
                                      //   builder: (context) => LoginPage(),
                                      // ),
                                    ));
                              },
                              child: Text(
                                'Login',
                                style: kBodyText.copyWith(
                                  color: middleBrown,
                                  fontSize: 12,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    )));
  }
}
