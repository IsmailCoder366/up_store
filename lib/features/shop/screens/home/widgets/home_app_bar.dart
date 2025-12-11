import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/text.dart';

class UHomeAppBar extends StatelessWidget {
  const UHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UAppBar(

      /// Title and Subtitle
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Title
          Text(
            UTexts.googMorning,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: UColors.grey),
          ),

          /// Subtitle
          Text(
            UTexts.unknownPro,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: UColors.white),
          ),
        ],
      ),
      actions: [

        /// Bag Icon
        UCartCounterIcon()
      ],
    );
  }
}