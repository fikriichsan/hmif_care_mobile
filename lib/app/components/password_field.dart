import 'package:flutter/material.dart';
import '../utils/theme/constants.dart';
import '../utils/theme/colors.dart';

class ThePasswordField extends StatelessWidget {
  const ThePasswordField({
    Key? key,
    this.controllerText,
    required this.hintText,
  }) : super(key: key);

  final controllerText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 5, offset: Offset(0, 2))
              ]),
          child: TextField(
            controller: controllerText,
            style: kBodyText.copyWith(color: black),
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: hintText,
                hintStyle: kBodyText,
                border: InputBorder.none),
          ),
        ));
  }
}
