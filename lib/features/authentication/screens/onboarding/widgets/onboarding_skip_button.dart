import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:up_store/features/authentication/controller/onboarding_controller.dart';
import 'package:up_store/utils/constants/helpers/device_helpers.dart';

class OnboardingSkipButton extends StatelessWidget {


  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Obx(
            ()=> controller.currentIndex.value == 2 ? SizedBox() :
    Positioned(
      top: UDeviceHelper.getAppBarHeight(),
      right: 0,
      child:TextButton(onPressed: (){
        controller.skipPage();
      }, child: Text('Skip')),
    ));
  }
}