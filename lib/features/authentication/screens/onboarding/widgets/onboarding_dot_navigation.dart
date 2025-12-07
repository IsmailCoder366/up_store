import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:up_store/utils/constants/helpers/device_helpers.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: UDeviceHelper.getBottomNavigationBarHeight() * 5,
        left: UDeviceHelper.getScreenWidth(context) / 3,
        right: UDeviceHelper.getScreenWidth(context) / 3,
        child: SmoothPageIndicator(
          controller: PageController(),
          count: 3,
          effect: ExpandingDotsEffect(
              dotHeight: 6.0
          ),
        ));
  }
}