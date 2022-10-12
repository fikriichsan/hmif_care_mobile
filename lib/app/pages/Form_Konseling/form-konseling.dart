import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/app/utils/theme/colors.dart';

class FormKonselingPage extends StatefulWidget {
  const FormKonselingPage({Key? key}) : super(key: key);

  @override
  _FormKonselingPageState createState() => _FormKonselingPageState();
}

class _FormKonselingPageState extends State<FormKonselingPage> {
  var _result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pilihan Konseling",
                  ),
                  RadioListTile(
                      title: const Text("Masalah Perkuliahan dan Finansial"),
                      value: 1,
                      groupValue: _result,
                      activeColor: darkBrown,
                      onChanged: (value) {
                        setState(() {
                          _result = value;
                        });
                      }),
                  RadioListTile(
                      title: const Text("Perencanaan Karir"),
                      value: 1,
                      groupValue: _result,
                      activeColor: darkBrown,
                      onChanged: (value) {
                        setState(() {
                          _result = value;
                        });
                      }),
                  Container(
                    child: TextField(
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          hintText: "Ceritakan Masalahku",
                          border: InputBorder.none,
                        )),
                  ),
                  const Divider(
                    height: 16,
                    thickness: 2,
                    indent: 20,
                    endIndent: 0,
                    color: darkBrown,
                  ),
                ],
              )
              //
              )
        ]),
      )),
    );
  }
}
