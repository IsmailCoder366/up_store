
import 'package:flutter/material.dart';
import 'package:up_store/utils/constants/sizes.dart';

import '../../constants/colors.dart';

class UcheckBoxTheme{
  UcheckBoxTheme._();

  /// Light Mode
  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(USize.xs)),
    checkColor: WidgetStateProperty.resolveWith((state){
      if(state.contains(WidgetState.selected)){
        return UColors.white;
      }else{
        return UColors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return UColors.primary;
      }else{
        return Colors.transparent;
      }
    })
  );

  /// Dark Mode
  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(USize.xs)),
    checkColor: WidgetStateProperty.resolveWith((state){
      if(state.contains(WidgetState.selected)){
        return UColors.white;
      }else{
        return UColors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return UColors.primary;
      }else{
        return Colors.transparent;
      }
    })
  );
}