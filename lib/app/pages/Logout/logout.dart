import 'package:flutter/material.dart';
import 'package:hmif_care_mobile/app/utils/theme/colors.dart';
import 'package:hmif_care_mobile/app/utils/theme/constants.dart';

class LogoutPage extends StatefulWidget {
  const LogoutPage({Key? key}) : super(key: key);

  @override
  _LogoutPageState createState() => _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.bottomRight,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).restorablePush(_dialogBuilder);
            },
            style: ElevatedButton.styleFrom(
              primary: darkBrown,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10),
              ),
            ),
            child: Text("Submit"),
          ),
        ),
      ),
    ); //
  }

  static Route<Object?> _dialogBuilder(
      BuildContext context, Object? arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Keluar?',
            textAlign: TextAlign.start,
          ),
          content: Wrap(
            children: [
              Container(
                  width: 500,
                  child: Text("Apakah Anda yakin ingin keluar?",
                      textAlign: TextAlign.start)),
            ],
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18))),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 100),
                        primary: darkBlue,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        textStyle: Theme.of(context).textTheme.labelLarge,
                      ),
                      child: const Text('BATALKAN'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 120),
                        primary: darkBlue,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        textStyle: Theme.of(context).textTheme.labelLarge,
                      ),
                      child: const Text('OKE'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                )
              ]),
            )
          ],
        );
      },
    );
  }
}
