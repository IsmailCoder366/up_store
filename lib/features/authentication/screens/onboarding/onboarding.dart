import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:up_store/features/authentication/controller/onboarding_controller.dart';
import 'package:up_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:up_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:up_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:up_store/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';

import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: USize.defaultSpace),
        child: Stack(
          children: [

            /// Scrollable Page
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnboardingPage(animations: UImages.onboarding1Animation, title: UTexts.onboardingTitle1, subTitle: UTexts.onboardingSubtitle1),
                OnboardingPage(animations: UImages.onboarding2Animation, title: UTexts.onboardingTitle2, subTitle: UTexts.onboardingSubtitle2),
                OnboardingPage(animations: UImages.onboarding3Animation, title: UTexts.onboardingTitle3, subTitle: UTexts.onboardingSubtitle3),

              ],
            ),

            /// indicators
            OnboardingDotNavigation(),

            /// Bottom Button
            OnboardingNextButton(),

            /// skip button
            OnboardingSkipButton(),
          ],
        ),
      ),
    );
  }
}










