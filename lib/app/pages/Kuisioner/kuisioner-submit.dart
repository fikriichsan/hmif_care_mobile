import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/app/utils/theme/colors.dart';
import 'package:hmif_care_mobile/app/utils/theme/constants.dart';
import '../screen.dart';

class KuisionerSubmitPage extends StatefulWidget {
  const KuisionerSubmitPage({Key? key}) : super(key: key);

  @override
  _KuisionerSubmitPageState createState() => _KuisionerSubmitPageState();
}

class _KuisionerSubmitPageState extends State<KuisionerSubmitPage> {
  var _result;
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: CustomScrollView(reverse: true, slivers: <Widget>[
      SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  alignment: Alignment.center,
                  width: 141,
                  height: 31,
                  decoration: BoxDecoration(
                    color: lightBrown,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text("10/10"),
                )),
            SizedBox(
              height: 16,
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Container(
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. A suspendisse fringilla egestas lorem nec purus. Ut nulla augue vel blandit. "),
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
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.black12,
                        //       blurRadius: 5,
                        //       offset: Offset(0, 2))
                        // ]
                      ),
                      child: RadioListTile(
                          title: const Text("Lorem Ipsum"),
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
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.black12,
                        //       blurRadius: 5,
                        //       offset: Offset(0, 2))
                        // ]
                      ),
                      child: RadioListTile(
                          title: const Text("Lorem Ipsum"),
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
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.black12,
                        //       blurRadius: 5,
                        //       offset: Offset(0, 2))
                        // ]
                      ),
                      child: RadioListTile(
                          title: const Text("Lorem Ipsum"),
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
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.black12,
                        //       blurRadius: 5,
                        //       offset: Offset(0, 2))
                        // ]
                      ),
                      child: RadioListTile(
                          title: const Text("Lorem Ipsum"),
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
                      height: 300,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: darkBrown,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10),
                          ),
                        ),
                        child: Text("Submit"),
                      ),
                    ),
                  ],
                )
                //
                )
          ],
        ),
      )
    ])));
  }
}
