import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/widget.dart';
import '../../utils/theme/constants.dart';
import '../../utils/theme/colors.dart';

import 'package:flutter/cupertino.dart';

// import '../utils/theme/font.dart';
import '../screen.dart';
import '../Login/components/login_up.dart';

import 'dart:io';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController konfirmController = TextEditingController();

  String username = '';
  String nim = '';
  String password = '';
  String konfirm = '';

  _RegisterPageState() {
    usernameController.addListener(() {
      setState(() {
        username = usernameController.text;
      });
    });
    nimController.addListener(() {
      setState(() {
        nim = nimController.text;
      });
    });
    passwordController.addListener(() {
      setState(() {
        password = passwordController.text;
      });
    });
    konfirmController.addListener(() {
      setState(() {
        konfirm = konfirmController.text;
      });
    });
  }

  String url ='http://192.168.8.159:3001';

  Future<void> Register() async {
    try {
      var response = await Dio().post(
        url + '/user/register',
        data: {"username": username, "nim": nim, "password": password},
      );
      print(response.data);
      if (response.data['message'] == 'Register berhasil') {
        Get.toNamed('/welcomek');
      }
    } catch (e) {
      print(e);
      if (e is DioError) {
        print(e.response!.data['error']['message'].toString());
      }
    }
  }

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
                                  controllerText: usernameController,
                                  hintText: "Write Your Name",
                                  inputType: TextInputType.text,
                                ),
                                FieldName(fieldName: "NIM"),
                                TheTextField(
                                  controllerText: nimController,
                                  hintText: "Write Your NIM",
                                  inputType: TextInputType.text,
                                ),
                                FieldName(fieldName: "Password"),
                                ThePasswordField(
                                  controllerText: passwordController,
                                  hintText: "Write Your Password",
                                ),
                                // FieldName(fieldName: "Confirm Password"),
                                // ThePasswordField(
                                //   controllerText: konfirmController,
                                //   hintText: "Rewrite Your Password",
                                // ),
                              ],
                            )),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: ElevatedButton(
                            onPressed: () {
                              Register();
                            },
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
