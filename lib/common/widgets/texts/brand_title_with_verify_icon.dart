import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/texts/brand_title_text.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/enums.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UBrandTitleWithVerifyIcon extends StatelessWidget {
  const UBrandTitleWithVerifyIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = UColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        /// Brand
        Flexible(
          child: UBrandTitleText(
            title: title,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
            color: textColor,
          ),
        ),
        SizedBox(width: USize.xs),

        /// icon
        Icon(Iconsax.verify5, color: iconColor, size: USize.iconXs),
      ],
    );
  }
}
