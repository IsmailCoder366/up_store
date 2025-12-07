import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';


class UOutlinedButtonTheme {
  UOutlinedButtonTheme._();


  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: UColors.dark,
      side: const BorderSide(color: UColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: UColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: USize.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(USize.buttonRadius)),
    ),
  );


  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: UColors.light,
      side: const BorderSide(color: UColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: UColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: USize.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(USize.buttonRadius)),
    ),
  );
}