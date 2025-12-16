import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/icon/circular_icon.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UProductQuantityWithAddRemove extends StatelessWidget {
  const UProductQuantityWithAddRemove({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return Row(
      children: [
        /// Decrement Button
        UCircularIcon(
          icon: Iconsax.minus,
          width: 32.0,
          height: 32.0,
          size: USize.md,
          color: dark ? UColors.white : UColors.black,
          backgroundColor: dark ? UColors.darkerGrey : UColors.grey,
        ),
        SizedBox(width: USize.spaceBtwItems),

        /// Counter Text
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(width: USize.spaceBtwItems),

        /// Increment Button
        UCircularIcon(
            icon: Iconsax.add,
            width: 32.0,
            height: 32.0,
            size: USize.md,
            color: UColors.white,
            backgroundColor: UColors.primary
        ),
      ],
    );
  }
}