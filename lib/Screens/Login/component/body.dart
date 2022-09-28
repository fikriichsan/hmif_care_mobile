import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/Screens/Login/component/background.dart';
import 'package:hmif_care_mobile/constants.dart';

class BodyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundLogin(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 56),
            child: Image.asset("assets/images/logoHmif.png", width: size.width * 0.35),
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              "LOGIN TO YOUR ACCOUNT",
              style: TextStyle(
                letterSpacing: 2,
                color: middleBrown,
                fontSize: 18
              ),
              )
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "NIM",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
          )

        ],));
  }
}