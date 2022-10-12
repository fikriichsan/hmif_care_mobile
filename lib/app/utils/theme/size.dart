import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get widthQuery => MediaQuery.of(this).size.width;
  double get heightQuery => MediaQuery.of(this).size.height;
}

const double spacingLarge = 32;
const double spacingNormal = 12;
const double spacingSmall = 8;
const double spacingMicro = 4;

const double paddingSmall = 8;
const double paddingNormal = 12;
const double paddingLarge = 24;

const double borderRadiusNormal = 12;

const defaultPadding = 16.0;
