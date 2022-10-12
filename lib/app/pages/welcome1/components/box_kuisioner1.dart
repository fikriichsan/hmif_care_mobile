import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/app/pages/welcome1/components/kuisioner_btn.dart';
class BoxKuisioner1 extends StatelessWidget {
  const BoxKuisioner1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          constraints: const BoxConstraints.expand(
            height: 350,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x3600000F),
                offset: Offset(0, -1),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text('Welcome HMIF CARE',
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      )),
              ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: const Text(
                  'Sebelum kalian explore lebih jauh untuk mengenal diri\n Bantu kami untuk mengisi kuisioner ini, diakhir dari pengisian kuisioner, akan ada hasil diagnosis berdasarkan jawaban yang Anda berikan\n Setelah mengisi kuisioner ini,\nAnda dapat mengakses fitur-fitur yang ada pada HMIF Care',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat-SemiBold',
                    // fontWeight: FontWeight.w500,
                    fontSize: 12,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Kuisionerbtn()),
            ],
          ),
        ),
      ],
    );
  }
}
