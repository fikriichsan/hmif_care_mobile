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
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(padding: const EdgeInsets.only(top: 32), 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                    "Pilihan Konseling",
                  ),
                  SizedBox(
                    height: 10,
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
                      value: 2,
                      groupValue: _result,
                      activeColor: darkBrown,
                      onChanged: (value) {
                        setState(() {
                          _result = value;
                        });
                      }),
                      SizedBox(
                    height: 10,
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Container(
                    child: TextField(
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          hintText: "Ceritakan Masalahku",
                          border: InputBorder.none,
                        )),
                  ),),
                  const Divider(
                    height: 16,
                    thickness: 2,
                    indent: 20,
                    endIndent: 0,
                    color: darkBrown,
                  ),
                  Text(
                    "Media Konseling",
                  ),
                  RadioListTile(
                      title: const Text("Offline"),
                      value: 3,
                      groupValue: _result,
                      activeColor: darkBrown,
                      onChanged: (value) {
                        setState(() {
                          _result = value;
                        });
                      }),
                  RadioListTile(
                      title: const Text("Online"),
                      value: 4,
                      groupValue: _result,
                      activeColor: darkBrown,
                      onChanged: (value) {
                        setState(() {
                          _result = value;
                        });
                      }),
                  RadioListTile(
                      title: const Text("Whatsapp"),
                      value: 5,
                      groupValue: _result,
                      activeColor: darkBrown,
                      onChanged: (value) {
                        setState(() {
                          _result = value;
                        });
                      }),
                  Text(
                    "Tanggal Pelaksanaan",
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Tap to select date"),
                      style: ElevatedButton.styleFrom(
                          primary: darkBrown,
                          onPrimary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  Text(
                    "Sesi Pelaksanaan",
                  ),
                  RadioListTile(
                      title: const Text("Sesi 1"),
                      value: 6,
                      groupValue: _result,
                      activeColor: darkBrown,
                      onChanged: (value) {
                        setState(() {
                          _result = value;
                        });
                  }),
                  RadioListTile(
                      title: const Text("Sesi 2"),
                      value: 7,
                      groupValue: _result,
                      activeColor: darkBrown,
                      onChanged: (value) {
                        setState(() {
                          _result = value;
                        });
                  }),
                  RadioListTile(
                      title: const Text("Sesi 3"),
                      value: 8,
                      groupValue: _result,
                      activeColor: darkBrown,
                      onChanged: (value) {
                        setState(() {
                          _result = value;
                        });
                  }),
                  RadioListTile(
                      title: const Text("Sesi 4"),
                      value: 9,
                      groupValue: _result,
                      activeColor: darkBrown,
                      onChanged: (value) {
                        setState(() {
                          _result = value;
                        });
                  }),
                  Text(
                    "Kamu ingin apa?",
                  ),
                  RadioListTile(
                      title: const Text("Diberikan Solusi"),
                      value: 11,
                      groupValue: _result,
                      activeColor: darkBrown,
                      onChanged: (value) {
                        setState(() {
                          _result = value;
                        });
                  }),
                  RadioListTile(
                      title: const Text("Didengarkan Saja"),
                      value: 12,
                      groupValue: _result,
                      activeColor: darkBrown,
                      onChanged: (value) {
                        setState(() {
                          _result = value;
                        });
                  }),
                  ],)
                  
              )],
              )
              //
              )
        ]),
      )),
    );
  }
}
