import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/app/utils/theme/colors.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class FormKonselingPage extends StatefulWidget {
  const FormKonselingPage({Key? key}) : super(key: key);

  @override
  _FormKonselingPageState createState() => _FormKonselingPageState();
}

class _FormKonselingPageState extends State<FormKonselingPage> {
  String _selectedDate = '';
  String _dateCount = '';

  void _onSelectionChange(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      }
    });
  }

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
                  Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Pilihan Konseling",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RadioListTile(
                              title: const Text(
                                  "Masalah Perkuliahan dan Finansial"),
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
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Ceritakan Masalah yang kamu alami",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 15),
                            child: Container(
                              child: TextField(
                                  keyboardType: TextInputType.multiline,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    hintText: "Ceritakan Masalahku",
                                    border: InputBorder.none,
                                  )),
                            ),
                          ),
                          const Divider(
                            height: 16,
                            thickness: 2,
                            indent: 20,
                            endIndent: 0,
                            color: darkBrown,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              "Media Konseling",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
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
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              "Tanggal Pelaksanaan",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 80,
                            right: 0,
                            bottom: 0,
                            child: SfDateRangePicker(
                              onSelectionChanged: _onSelectionChange,
                              selectionMode:
                                  DateRangePickerSelectionMode.single,
                              initialSelectedRange: PickerDateRange(
                                  DateTime.now()
                                      .subtract(const Duration(days: 4)),
                                  DateTime.now().add(const Duration(days: 3))),
                            ),
                          ),
                          // Container(
                          //   width: MediaQuery.of(context).size.width * 0.9,
                          //   child: ElevatedButton(
                          //     onPressed: () {
                          //     },
                          //     child: Text("Tap to select date"),
                          //     style: ElevatedButton.styleFrom(
                          //         primary: darkBrown,
                          //         onPrimary: Colors.white,
                          //         padding: EdgeInsets.symmetric(
                          //             vertical: 20, horizontal: 40),
                          //         shape: RoundedRectangleBorder(
                          //             borderRadius: BorderRadius.circular(12))),
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              "Sesi Pelaksanaan",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
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
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              "Kamu ingin apa?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
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
                        ],
                      ))
                ],
              )
              //
              )
        ]),
      )),
    );
  }
}
