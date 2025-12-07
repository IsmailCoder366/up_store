import 'package:flutter/material.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UElevatedButtonTheme {
  UElevatedButtonTheme._();

  static final ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: UColors.light,
      backgroundColor: UColors.primary,
      disabledForegroundColor: UColors.darkGrey,
      disabledBackgroundColor: UColors.buttonDisabled,
      side: const BorderSide(color: UColors.light),
        padding: const EdgeInsets.symmetric(horizontal: USize.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: UColors.textWhite, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

    )
  );

  static final ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: UColors.light,
          backgroundColor: UColors.primary,
          disabledForegroundColor: UColors.darkGrey,
          disabledBackgroundColor: UColors.darkerGrey,
          side: const BorderSide(color: UColors.light),
          padding: const EdgeInsets.symmetric(horizontal: USize.buttonHeight),
          textStyle: const TextStyle(fontSize: 16, color: UColors.textWhite, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

      )
  );
}