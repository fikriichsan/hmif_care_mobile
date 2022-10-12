import 'package:flutter/material.dart';

// import '../../../constants.dart';
import '../../welcome2/welcome_screen2.dart';



class Kuisionerbtn extends StatelessWidget {
  const Kuisionerbtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          width: double.infinity,
          // tag: "kuisioner_btn",
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const WelcomeScreen2();
                  },
                ),
              );
            },
            child: Text("Isi Kuisioner"),
             style: ElevatedButton.styleFrom(
                  primary:  Color(0XFF072768),
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
          ),
        ),
        // const SizedBox(height: 16),
        // ElevatedButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) {
        //           return LoginPage();
        //         },
        //       ),
        //     );
        //   },
        //   style: ElevatedButton.styleFrom(
        //        elevation: 0),
        //   child: Text(
        //     "Sign Up".toUpperCase(),
        //     style: TextStyle(color: Colors.black),
        //   ),
        // ),
      ],
    );
  }
}
