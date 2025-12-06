import 'package:flutter/material.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/theme/widget_theme/chip_theme.dart';
import 'package:up_store/utils/theme/widget_theme/text_theme.dart';

class UAppTheme{


  UAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: '',
    brightness: Brightness.light,
    primaryColor: UColors.primary,
    disabledColor: UColors.grey,
    textTheme: UTextTheme.lightTextTheme,
    chipTheme: UChipTheme.lightChipTheme,
    scaffoldBackgroundColor: UColors.white,
    appBarTheme: UAppTheme.lightTheme

  );
  static ThemeData darkThem = ThemeData(
      useMaterial3: true,
      fontFamily: '',
      brightness: Brightness.dark,
      primaryColor: UColors.primary,
      disabledColor: UColors.grey,
      textTheme: UTextTheme.darkTextTheme,
    chipTheme: UChipTheme.darkChipTheme,
    scaffoldBackgroundColor: UColors.black,
    appBarTheme: UAppTheme.darkThem
  );
}