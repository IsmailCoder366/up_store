import 'package:flutter/cupertino.dart';
import 'package:up_store/utils/constants/colors.dart';

class UShadow{
  UShadow._();

  static List<BoxShadow> searchBarShadow = [
    BoxShadow(
        color: UColors.black.withValues(alpha: 0.1),
        spreadRadius: 4.0,
        blurRadius: 4.0
    )
  ];
}