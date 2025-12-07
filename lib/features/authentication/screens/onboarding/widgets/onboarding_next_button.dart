import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/button/elevated_button.dart';
import 'package:up_store/utils/constants/helpers/device_helpers.dart';
import 'package:up_store/utils/constants/sizes.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        right: 0,
        bottom: USize.spaceBtwItems * 4,

        child: SizedBox(
            height: UDeviceHelper.getAppBarHeight(),
            width: UDeviceHelper.getScreenWidth(context),
            child: UElevatedButton(child: Text('Next'), onPressed: (){

            },)
        )
    );
  }
}