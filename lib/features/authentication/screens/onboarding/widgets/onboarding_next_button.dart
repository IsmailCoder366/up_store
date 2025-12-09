import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:up_store/common/widgets/button/elevated_button.dart';
import 'package:up_store/features/authentication/controller/onboarding_controller.dart';
import 'package:up_store/utils/constants/helpers/device_helpers.dart';
import 'package:up_store/utils/constants/sizes.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
        left: 0,
        right: 0,
        bottom: USize.spaceBtwItems * 4,

        child: SizedBox(
            height: UDeviceHelper.getAppBarHeight(),
            width:  UDeviceHelper.getScreenWidth(context),
            child: Obx(() => UElevatedButton(child: Text(controller.currentIndex.value == 2  ? 'Get Started' : 'Next'), onPressed: (){
            controller.nextPage();
            },))
        )
    );
  }
}