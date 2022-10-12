import 'package:flutter/material.dart';

// import '../../../constants.dart';
import '../../welcome1/welcome_kuisioner1.dart';

class Kuisionerbtn2 extends StatelessWidget {
  const Kuisionerbtn2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const WelcomeScreen();
                  },
                ),
              );
            },
            child: Text("Mulai"),
            style: ElevatedButton.styleFrom(
                primary: Color(0XFF072768),
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40))),
          ),
        ),
      ],
    );
  }
}
