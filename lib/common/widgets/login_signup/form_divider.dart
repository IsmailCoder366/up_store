import 'package:flutter/material.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';

class ULoginSignUp extends StatelessWidget {
  const ULoginSignUp({
    super.key,

    required this.title,
  });


  final String title;

  @override
  Widget build(BuildContext context) {
    final  dark = UHelperFunction.isDarkMode(context);
    return Row(
      children: [
        Expanded(child: Divider(indent: 60, endIndent: 5, thickness: 0.5, color: dark ? UColors.darkGrey : Colors.grey)),
        Text(title, style: Theme.of(context).textTheme.labelMedium,),
        Expanded(child: Divider(indent: 5, endIndent: 60, thickness: 0.5, color: dark ? UColors.darkGrey : Colors.grey)),
      ],
    );
  }
}