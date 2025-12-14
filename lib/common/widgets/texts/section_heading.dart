import 'package:flutter/material.dart';

import 'package:up_store/utils/constants/sizes.dart';


class USectionHeading extends StatelessWidget {
  const USectionHeading({
    super.key,
    this.textColor,
    required this.title,
    this.buttonTitle = 'View all',
    this.onPressed,
  });

  final Color? textColor;
  final String title, buttonTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: USize.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall, maxLines: 1, overflow: TextOverflow.ellipsis
          ),
          TextButton(onPressed: onPressed, child: Text(buttonTitle)),
        ],
      ),
    );
  }
}
