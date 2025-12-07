import 'package:flutter/material.dart';
import 'package:up_store/utils/constants/helpers/device_helpers.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: UDeviceHelper.getAppBarHeight(),
      right: 0,
      child: TextButton(onPressed: (){

      }, child: Text('Skip')),
    );
  }
}