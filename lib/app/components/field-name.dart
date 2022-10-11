import 'package:flutter/material.dart';
import '../utils/theme/colors.dart';

class FieldName extends StatelessWidget {
  const FieldName({
    Key? key,
    required this.fieldName,
  }) : super(key: key);

  final String fieldName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        child: Text(
          fieldName,
          style: TextStyle(
                  fontFamily: 'Montserrat-SemiBold',
                  fontSize: 14,
                  fontWeight: FontWeight.w500)
              .copyWith(color: darkBlue),
        ),
      ),
    );
  }
}
