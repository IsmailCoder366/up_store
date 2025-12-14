import 'package:flutter/material.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';

class UCircularIcon extends StatelessWidget {
  const UCircularIcon({
    super.key,
    this.double,
    this.width,
    this.height,
    this.size,
    this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double, width, height, size;
  final IconData? icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: (backgroundColor != null)
            ? backgroundColor
            : dark
            ? UColors.dark.withValues(alpha: 0.9)
            : UColors.light.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
