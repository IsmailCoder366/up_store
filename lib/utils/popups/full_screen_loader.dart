import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';

class FullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: UHelperFunction.isDarkMode(Get.context!) ? UColors.dark : UColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [

                  /// Extra Space
                  const SizedBox(height: 250),


                  // /// Animation
                  // UAnimationLoader(text : text),
                ],
              ),
            )));
  }

  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}