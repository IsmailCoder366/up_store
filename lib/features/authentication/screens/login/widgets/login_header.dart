import 'package:flutter/material.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class ULoginHeader extends StatelessWidget {
  const ULoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(UTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        SizedBox(height: USize.sm,),
        Text(UTexts.loginSubtitle, style: Theme.of(context).textTheme.bodySmall)
      ],
    );
  }
}