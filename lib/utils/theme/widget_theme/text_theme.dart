import 'package:flutter/material.dart';

import '../../constants/colors.dart' show UColors;

class UTextTheme{

  // private constructor
  UTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: UColors.dark),
    headlineMedium: TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: UColors.dark),
    headlineSmall: TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: UColors.dark),

    titleLarge: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: UColors.dark),
    titleMedium: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: UColors.dark),
    titleSmall: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: UColors.dark),

    bodyLarge: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: UColors.dark),
    bodyMedium: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: UColors.dark),
    bodySmall: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: UColors.dark),

    labelLarge: TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: UColors.dark),
    labelMedium: TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: UColors.dark),

  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: UColors.light),
    headlineMedium: TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: UColors.light),
    headlineSmall: TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: UColors.light),

    titleLarge: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: UColors.light),
    titleMedium: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: UColors.light),
    titleSmall: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: UColors.light),

    bodyLarge: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: UColors.light),
    bodyMedium: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: UColors.light),
    bodySmall: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: UColors.light),

    labelLarge: TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: UColors.light),
    labelMedium: TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: UColors.light),
  );

}