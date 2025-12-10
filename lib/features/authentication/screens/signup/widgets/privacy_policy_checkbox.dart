import 'package:flutter/material.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/text.dart';

class PrivacyPolicyCheckBox extends StatelessWidget {
  const PrivacyPolicyCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value){

        }),
        RichText(
          text: TextSpan(
              style: Theme.of(context).textTheme.bodySmall,
              children: [
                TextSpan(text: '${UTexts.iAgreeto}') ,
                TextSpan(text: '${UTexts.privacyPolicy}', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: dark ? UColors.white : UColors.primary, decoration: TextDecoration.underline)),
                TextSpan(text: '${UTexts.and}'),
                TextSpan(text: '${UTexts.termsOfUse}', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: dark ? UColors.white : UColors.primary, decoration: TextDecoration.underline, )),
              ]

          ),


        ),
      ],
    );
  }
}