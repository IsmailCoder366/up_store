import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:up_store/features/authentication/controller/onboarding_controller.dart';
import 'package:up_store/utils/constants/helpers/device_helpers.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight() * 5,
      left: UDeviceHelper.getScreenWidth(context) / 3,
      right: UDeviceHelper.getScreenWidth(context) / 3,
      child: SmoothPageIndicator(
        controller: controller.pageController, // ✅ SAME controller
        count: 3,
        effect: const ExpandingDotsEffect(
          dotHeight: 6.0,
        ),
        onDotClicked: (index) {
          controller.pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}
