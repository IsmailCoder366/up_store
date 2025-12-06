import 'package:flutter/material.dart';

import '../../constants/colors.dart' show UColors;

class UChipTheme{

  // private constructor
  UChipTheme._();

  //Light Chip Theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor:  UColors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: UColors.black),
    selectedColor: UColors.primary,
    padding:  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: UColors.white,
  );

  // Dark Chip Theme
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor:  UColors.darkerGrey,
    labelStyle: const TextStyle(color: UColors.white),
    selectedColor: UColors.primary,
    padding:  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: UColors.white,
  );
}