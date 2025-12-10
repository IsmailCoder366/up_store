import 'package:flutter/material.dart';
import 'package:up_store/utils/constants/text.dart';

class USignUpHeader extends StatelessWidget {
  const USignUpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(UTexts.signUpTitle, style: Theme.of(context).textTheme.headlineMedium);
  }
}