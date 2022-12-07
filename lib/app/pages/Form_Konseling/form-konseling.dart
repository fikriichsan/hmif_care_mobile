import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/app/utils/theme/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormKonselingPage extends StatefulWidget {
  const FormKonselingPage({Key? key}) : super(key: key);

  @override
  _FormKonselingPageState createState() => _FormKonselingPageState();
}

class _FormKonselingPageState extends State<FormKonselingPage> {
  PageController _controller = PageController();
  final list = <int>[];
  var _radioValue1;
  var _radioValue2;
  var _radioValue3;
  var _radioValue4;

  String url = 'http://192.168.137.54:3001';

  void _handleRadioValueChange(value) {
    setState(() {
      _radioValue1 = value;
    });
  }

  void _handleRadioValueChange2(value) {
    setState(() {
      _radioValue2 = value;
    });

    switch (_radioValue2) {
      case 0:
        Fluttertoast.showToast(
            msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
        break;
      case 1:
        Fluttertoast.showToast(
            msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
        break;
      case 2:
        Fluttertoast.showToast(
            msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
        break;
    }
  }

  void _handleRadioValueChange3(value) {
    setState(() {
      _radioValue3 = value;
    });

    switch (_radioValue3) {
      case 0:
        Fluttertoast.showToast(
            msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
        break;
      case 1:
        Fluttertoast.showToast(
            msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
        break;
      case 2:
        Fluttertoast.showToast(
            msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
        break;
      case 3:
        Fluttertoast.showToast(
            msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
        break;
    }
  }

  void _handleRadioValueChange4(value) {
    setState(() {
      _radioValue4 = value;
    });

    switch (_radioValue3) {
      case 0:
        Fluttertoast.showToast(
            msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
        break;
      case 1:
        Fluttertoast.showToast(
            msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
        break;
    }
  }

  Future getKuisioner() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      SharedPreferences kuisioner = await SharedPreferences.getInstance();
      String token = prefs.getString('token')!;
      var dio = Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers['accept'] = 'application/json';
      dio.options.headers['Authorization'] = 'Bearer $token';
      var response = await dio.get(url + '/kuisioner/');
      if (response.statusCode == 200) {
        kuisioner.setString("id_user", response.data["_id"]);
        return response.data;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      if (e is DioError) {
        print(e.response!.data);
      }
    }
  }

  Future addKuisioner() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      SharedPreferences akun = await SharedPreferences.getInstance();
      SharedPreferences kuisioner = await SharedPreferences.getInstance();

      var token = await prefs.getString('token');
      var idUser = await akun.getString('id');
      var jenisKonseling = await kuisioner.getString('jenis_konseling');
      var deskRipsi = await kuisioner.getString('deskripsi');
      var mediaKonseling = await kuisioner.getString('media_konseling');
      var jadwalKonseling = await kuisioner.getString('jadwal_kuisioner');
      var sesiKonseling = await kuisioner.getString('sesi_konseling');
      var keInginan = await kuisioner.getString('keinginan');

      var dio = Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers['accept'] = 'application/json';
      dio.options.headers['Authorization'] = 'Bearer $token';
      var response = await dio.post(url + '/konseling/post', data: {
        "id_user": idUser,
        "jenis_konseling": jenisKonseling,
        "deskripsi": deskRipsi,
        "media_konseling": mediaKonseling,
        "jadwal_konseling": jadwalKonseling,
        "sesi_konseling": sesiKonseling,
        "keinginan": keInginan
      });
      if (response.statusCode == 200) {
        print(response.data);
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      if (e is DioError) {
        print(e.response!.data);
      }
    }
  }

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
                          Container(
                            child: Column(
                              children: [
                                RadioListTile(
                                    title: const Text(
                                        "Masalah Perkuliahan dan Finansial"),
                                    value: 0,
                                    groupValue: _radioValue1,
                                    activeColor: darkBrown,
                                    onChanged: _handleRadioValueChange),
                                RadioListTile(
                                    title: const Text("Perencanaan Karir"),
                                    value: 1,
                                    groupValue: _radioValue1,
                                    activeColor: darkBrown,
                                    onChanged: _handleRadioValueChange),
                              ],
                            ),
                          ),
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
                              value: 0,
                              groupValue: _radioValue2,
                              activeColor: darkBrown,
                              onChanged: _handleRadioValueChange2),
                          RadioListTile(
                              title: const Text("Online"),
                              value: 1,
                              groupValue: _radioValue2,
                              activeColor: darkBrown,
                              onChanged: _handleRadioValueChange2),
                          RadioListTile(
                              title: const Text("Whatsapp"),
                              value: 2,
                              groupValue: _radioValue2,
                              activeColor: darkBrown,
                              onChanged: _handleRadioValueChange2),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              "Tanggal Pelaksanaan",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              "Sesi Pelaksanaan",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Column(
                            children: [
                              RadioListTile(
                                  title: const Text("Sesi 1"),
                                  value: 0,
                                  groupValue: _radioValue3,
                                  activeColor: darkBrown,
                                  onChanged: _handleRadioValueChange3),
                              RadioListTile(
                                  title: const Text("Sesi 2"),
                                  value: 1,
                                  groupValue: _radioValue3,
                                  activeColor: darkBrown,
                                  onChanged: _handleRadioValueChange3),
                              RadioListTile(
                                  title: const Text("Sesi 3"),
                                  value: 2,
                                  groupValue: _radioValue3,
                                  activeColor: darkBrown,
                                  onChanged: _handleRadioValueChange3),
                              RadioListTile(
                                  title: const Text("Sesi 4"),
                                  value: "Sesi 4",
                                  groupValue: _radioValue3,
                                  activeColor: darkBrown,
                                  onChanged: _handleRadioValueChange3),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              "Kamu ingin apa?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Column(
                            children: [
                              RadioListTile(
                                  title: const Text("Diberikan Solusi"),
                                  value: "Diberikan Solusi",
                                  groupValue: _radioValue4,
                                  activeColor: darkBrown,
                                  onChanged: _handleRadioValueChange4),
                              RadioListTile(
                                  title: const Text("Didengarkan Saja"),
                                  value: "Didengarkan Saja",
                                  groupValue: _radioValue4,
                                  activeColor: darkBrown,
                                  onChanged: _handleRadioValueChange4),
                            ],
                          ),
                          Container(
                              alignment: Alignment.bottomRight,
                              child: TextButton.icon(
                                  onPressed: () {
                                    setState(() {
                                      list.add(_radioValue1);
                                      list.add(_radioValue2);
                                      list.add(_radioValue3);
                                      list.add(_radioValue4);
                                    });
                                    addKuisioner();
                                  },
                                  label: Text("Next"),
                                  icon: Icon(Icons.keyboard_arrow_right),
                                  style: TextButton.styleFrom(
                                    primary: black,
                                  ))),
                        ]),
                  )
                ],
              )
              //
              )
        ]),
      ),
    ));
  }
}
