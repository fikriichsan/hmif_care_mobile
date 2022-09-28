import 'package:flutter/material.dart';
// import '../utils/theme/font.dart';
import '../utils/theme/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var nama = "";
  var nim = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Row(children: [
            Column(
              children: [
                Image.asset(
                  'assets/image/shape_login1.png',
                  width: 134.5,
                  height: 120.13,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/image/logoKecil.png',
                  width: 96,
                  height: 42,
                ),
              ],
            ),
          ]),
          SizedBox(height: 56),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('Create Your Account',
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        letterSpacing: 2,
                        fontSize: 18,
                      ).copyWith(color: middleBrown)),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/image/illustrasi_login.png',
                    width: 68,
                    height: 32.74,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 14,
                      ).copyWith(color: darkBlue),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: double.infinity,
            // elevation: 20.0,
            // shadowColor: Colors.black,
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                ),
                // border:
                //   const OutlineInputBorder(
                //      borderRadius: const BorderRadius.circular(10)
                //   ),
                labelText: "Nama",
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (value) => setState(() => nama = value),
              keyboardType: TextInputType.name,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'NIM',
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 14,
                      ).copyWith(color: darkBlue),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: double.infinity,
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                ),
                labelText: "Nim",
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (value) => setState(() => nim = value),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 14,
                      ).copyWith(color: darkBlue),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 20,
            ),
            width: double.infinity,
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                ),
                labelText: "Password",
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (value) => setState(() => password = value),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Konfirmasi Password',
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 14,
                      ).copyWith(color: darkBlue),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 20,
            ),
            width: double.infinity,
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                ),
                labelText: "Konfirmasi Password",
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (value) => setState(() => password = value),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
          ),
        ],
      )),
    ));
  }
}
