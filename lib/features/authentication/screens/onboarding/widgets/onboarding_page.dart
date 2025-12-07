import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:up_store/utils/constants/helpers/device_helpers.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class OnboardingPage extends StatelessWidget {

  final String animations;
  final String title;
  final String subTitle;

  const OnboardingPage({
    super.key,
    required this.animations,
    required this.title,
    required this.subTitle
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: USize.defaultSpace, left: USize.defaultSpace, top: UDeviceHelper.getAppBarHeight() ),
      child: Column(
        children: [
          /// animations
          Lottie.asset(animations),
          
          /// title
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          
          /// subtitle
          Text(subTitle, style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center,),
          
          /// indicators
        ],
      ),
    );
  }
}