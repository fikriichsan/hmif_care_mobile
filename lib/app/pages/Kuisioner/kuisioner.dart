import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hmif_care_mobile/app/utils/theme/colors.dart';
import 'package:hmif_care_mobile/app/utils/theme/constants.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../screen.dart';

class KuisionerPage extends StatefulWidget {
  const KuisionerPage({Key? key}) : super(key: key);

  @override
  _KuisionerPageState createState() => _KuisionerPageState();
}

class _KuisionerPageState extends State<KuisionerPage> {
  PageController _controller = PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  var _result;
  int counter = 1;

  String url = 'http://192.168.8.159:3001';
  Future getAllQuiz() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String token = prefs.getString('token')!;
      var dio = Dio();
      dio.options.headers['content-type'] = 'application/json';
      dio.options.headers['accept'] = 'application/json';
      dio.options.headers['Authorization'] = 'Bearer $token';
      var response = await dio.get(url + '/quiz/638f970fdb0901bf3718e10e');
      if (response.statusCode == 200){
          return response.data;
      } else {
          return null;
      }
    } catch (e) {
      print(e);
      if(e is DioError){
        print(e.response!.data);
      }
    }
  }
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    getAllQuiz();
    return Scaffold(
        body: SafeArea(
            child: FutureBuilder(
              future: getAllQuiz(),
              builder: (context, AsyncSnapshot snapshot) {
                if(snapshot.hasData){
                  return PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _controller,
                  itemCount: snapshot.data['question'].length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: size.height,
                      width: double.infinity,
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Container(
                              alignment: Alignment.center,
                              width: 141,
                              height: 31,
                              decoration: BoxDecoration(
                                color: lightBrown,
                              ),
                              child: Text(counter.toString() + " / " + snapshot.data['question'].length.toString()),
                            )),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                            child: Container(
                              child: Text(snapshot.data['question'][index]['question']),
                            )),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: lightBrown,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: RadioListTile(
                                      title: const Text("Tidak Pernah"),
                                      value: 1,
                                      groupValue: _result,
                                      activeColor: darkBrown,
                                      onChanged: (value) {
                                        setState(() {
                                          _result = value;
                                        });
                                      }),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: lightBrown,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: RadioListTile(
                                      title: const Text("Kadang - Kadang"),
                                      value: 2,
                                      groupValue: _result,
                                      activeColor: darkBrown,
                                      onChanged: (value) {
                                        setState(() {
                                          _result = value;
                                        });
                                      }),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: lightBrown,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: RadioListTile(
                                      title: const Text("Sering"),
                                      value: 3,
                                      groupValue: _result,
                                      activeColor: darkBrown,
                                      onChanged: (value) {
                                        setState(() {
                                          _result = value;
                                        });
                                      }),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: lightBrown,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: RadioListTile(
                                      title: const Text("Hampir Selalu"),
                                      value: 4,
                                      groupValue: _result,
                                      activeColor: darkBrown,
                                      onChanged: (value) {
                                        setState(() {
                                          _result = value;
                                        });
                                      }),
                                ),
                                SizedBox(
                                  height: size.height*0.3,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                       child: TextButton.icon(
                                          onPressed: () {
                                            setState(() {
                                              counter--;
                                            });
                                            _controller.previousPage(duration: _kDuration, curve: _kCurve);
                                          },
                                          icon: Icon(Icons.keyboard_arrow_left),
                                          label: Text("Previous"),
                                          style: TextButton.styleFrom(
                                            primary: black,
                                          )),
                                    ),
                                    Container(
                                    alignment: Alignment.bottomRight,
                                    child: TextButton.icon(
                                        onPressed: () {
                                          if(snapshot.data['question'].length == counter) {
                                            Navigator.of(context).restorablePush(_dialogBuilder);
                                            print(_result);
                                          } else {
                                            setState(() {
                                              counter++;
                                            });
                                            print(counter);
                                            _controller.nextPage(duration: _kDuration, curve: _kCurve);
                                          }
                                        },
                                        label: Text("Next"),
                                        icon: Icon(Icons.keyboard_arrow_right),
                                        style: TextButton.styleFrom(
                                          primary: black,
                                        )),
                                  )
                                  ],
                                ),
                              ],
                            )
                            //
                            )
                        ],
                      ),
                    );
                  },
                );
                }else {
                  return Text("loading");
                }
              }
            )
                ) 
    );
  }
  static Route<Object?> _dialogBuilder(
      BuildContext context, Object? arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Hasil yang diperoleh',
            textAlign: TextAlign.center,
          ),
          content: Wrap(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/image/illustrasi_modal.png",
                        width: 100,
                      ),
                    ],
                  )),
              Container(
                  width: 500,
                  child: Text(
                      "Mahasiswa membutuhkan penanganan lebih lanjut. Untuk tahapan penanganan lebih lanjut, mahasiswa dapat mendaftarkan diri pada form yang ada pada halaman utama",
                      textAlign: TextAlign.center)),
            ],
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18))),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      primary: darkBrown,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    child: const Text('OK'),
                    onPressed: () {
                      Get.toNamed('/home');
                    },
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
