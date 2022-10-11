import 'package:flutter/material.dart';

import '../utils/theme/constants.dart';
import '../utils/theme/colors.dart';

class TheTextField extends StatelessWidget {
  const TheTextField({
    Key? key,
    required this.hintText,
    required this.inputType,
  }) : super(key: key);

  final String hintText;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 5, offset: Offset(0, 2))
              ]),
          child: TextField(
              style: kBodyText.copyWith(color: black),
              keyboardType: inputType,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: hintText,
                hintStyle: kBodyText,
                border: InputBorder.none,
                // enabledBorder: OutlineInputBorder(
                //     borderSide: BorderSide(color: white, width: 1),
                //     borderRadius: BorderRadius.circular(18))
              )),
        ));
  }
}
