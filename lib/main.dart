import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/app/pages/Welcome/welcome_screen.dart';
import 'package:hmif_care_mobile/app/utils/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor: darkBlue,
        scaffoldBackgroundColor: Colors.white,

      ),
      home: WelcomeScreen(),
    );
  }
}
