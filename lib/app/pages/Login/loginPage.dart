import 'dart:ui';
import 'dart:io';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:hmif_care_mobile/app/utils/theme/colors.dart';
import 'package:hmif_care_mobile/app/utils/theme/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import '../utils/theme/font.dart';
import '../screen.dart';
import 'components/login_up.dart';
import '../../components/widget.dart';
import './components/login_up.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController nimController = TextEditingController();

  String nim = "";
  String password = "";

  _LoginPageState() {
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
  }

  String url = 'http://10.160.118.242:3001';

  Future<void> login() async {
    try {
      var dio = Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers["accept"] = "application/json";
      var response = await dio.post(url + '/user/login',
        data: {"nim": nim, "password": password});
      print(response.data['token']);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', response.data['token']);
      prefs.setString("nim", nim);
      var token = await prefs.getString('token');
      print(token);
      if (response.data['message'] == 'Login Success'){
        Get.toNamed('/welcomek');
      }
    } catch (e) {
      print(e);
      if (e is DioError){
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
        reverse: true,
        slivers: <Widget>[
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Column(
                    children: [
                      BodyUpLogin(
                        titlePage: "Login to Your Account",
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
                                FieldName(
                                  fieldName: "NIM"),
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
                              ],
                            )),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: ElevatedButton(
                            onPressed: () {
                                login();
                                print(nimController.text);
                                print(passwordController.text);
                              },
                            child: Text("Login"),
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
                            Text("Dont't have an account? ",
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
                                                RegisterPage(),
                                        transitionDuration: Duration.zero,
                                        reverseTransitionDuration:
                                            Duration.zero));
                              },
                              child: Text(
                                'Register',
                                style: kBodyText.copyWith(
                                  color: middleBrown,
                                  fontSize: 12,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
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












































// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Background(
//         child: SingleChildScrollView(
//             child: Container(
//                 child: Column(
//       children: [
//         Padding(
//             padding: EdgeInsets.symmetric(vertical: 70),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Column(
//                   children: [
//                     Image.asset(
//                       'assets/image/logoKecil.png',
//                       width: 80,
//                     ),
//                   ],
//                 ),
//               ],
//             )),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               children: [
//                 Text('Create Your Account',
//                     style: TextStyle(
//                       fontFamily: 'Montserrat-SemiBold',
//                       letterSpacing: 2,
//                       fontSize: 18,
//                     ).copyWith(color: middleBrown)),
//               ],
//             ),
//             Column(
//               children: [
//                 Image.asset(
//                   'assets/image/illustrasi_login.png',
//                   width: 68,
//                   height: 32.74,
//                 )
//               ],
//             )
//           ],
//         ),
//       ],
//     ))));
//   }
// }

// class _LoginPageState extends State<LoginPage> {
//   var nama = "";
//   var nim = "";
//   var password = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: SingleChildScrollView(
//           child: Column(
//         children: [
//           Row(children: [
//             Column(
//               children: [
//                 Image.asset(
//                   'assets/image/shape_login1.png',
//                   width: 134.5,
//                   height: 120.13,
//                 )
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Image.asset(
//                   'assets/image/logoKecil.png',
//                   width: 96,
//                   height: 42,
//                 ),
//               ],
//             ),
//           ]),
//           SizedBox(height: 30),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 children: [
//                   Text('Create Your Account',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat-SemiBold',
//                         letterSpacing: 2,
//                         fontSize: 18,
//                       ).copyWith(color: middleBrown)),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Image.asset(
//                     'assets/image/illustrasi_login.png',
//                     width: 68,
//                     height: 32.74,
//                   )
//                 ],
//               )
//             ],
//           ),
//           SizedBox(
//             height: 24,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 32),
//             child: Row(
//               children: [
//                 Column(
//                   children: [
//                     Text(
//                       'Name',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat-SemiBold',
//                         fontSize: 14,
//                       ).copyWith(color: darkBlue),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.all(20),
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 5,
//                       offset: Offset(0, 2))
//                 ]),
//             // elevation: 20.0,
//             // shadowColor: Colors.black,
//             child: TextFormField(
//               decoration: InputDecoration(
//                 enabledBorder: const OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.white),
//                 ),
//                 // border:
//                 //   const OutlineInputBorder(
//                 //      borderRadius: const BorderRadius.circular(10)
//                 //   ),
//                 labelText: "Nama",
//                 filled: true,
//                 fillColor: Colors.white,
//               ),
//               onChanged: (value) => setState(() => nama = value),
//               keyboardType: TextInputType.name,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 32),
//             child: Row(
//               children: [
//                 Column(
//                   children: [
//                     Text(
//                       'NIM',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat-SemiBold',
//                         fontSize: 14,
//                       ).copyWith(color: darkBlue),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.symmetric(
//               vertical: 12,
//               horizontal: 20,
//             ),
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 5,
//                       offset: Offset(0, 2))
//                 ]),
//             child: TextFormField(
//               decoration: const InputDecoration(
//                 enabledBorder: const OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.white),
//                 ),
//                 labelText: "Nim",
//                 filled: true,
//                 fillColor: Colors.white,
//               ),
//               onChanged: (value) => setState(() => nim = value),
//               keyboardType: TextInputType.number,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 32),
//             child: Row(
//               children: [
//                 Column(
//                   children: [
//                     Text(
//                       'Password',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat-SemiBold',
//                         fontSize: 14,
//                       ).copyWith(color: darkBlue),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.symmetric(
//               vertical: 12,
//               horizontal: 20,
//             ),
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 5,
//                       offset: Offset(0, 2))
//                 ]),
//             child: TextFormField(
//               decoration: const InputDecoration(
//                 enabledBorder: const OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.white),
//                 ),
//                 labelText: "Password",
//                 filled: true,
//                 fillColor: Colors.white,
//               ),
//               onChanged: (value) => setState(() => password = value),
//               keyboardType: TextInputType.visiblePassword,
//               obscureText: true,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 32),
//             child: Row(
//               children: [
//                 Column(
//                   children: [
//                     Text(
//                       'Konfirmasi Password',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat-SemiBold',
//                         fontSize: 14,
//                       ).copyWith(color: darkBlue),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.symmetric(
//               vertical: 12,
//               horizontal: 20,
//             ),
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 5,
//                       offset: Offset(0, 2))
//                 ]),
//             child: TextFormField(
//               decoration: const InputDecoration(
//                 enabledBorder: const OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.white),
//                 ),
//                 labelText: "Konfirmasi Password",
//                 filled: true,
//                 fillColor: Colors.white,
//               ),
//               onChanged: (value) => setState(() => password = value),
//               keyboardType: TextInputType.visiblePassword,
//               obscureText: true,
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//             width: double.infinity,
//             child: ElevatedButton(
//               onPressed: () {},
//               child: Text("Sign Up"),
//               style: ElevatedButton.styleFrom(
//                   primary: darkBlue,
//                   onPrimary: Colors.white,
//                   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15))),
//             ),
//           ),
//         ],
//       )),
//     ));
//   }
// }
