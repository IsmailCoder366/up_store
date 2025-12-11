import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/styles/shadow.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class USearchBar extends StatelessWidget {
  const USearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunction.isDarkMode(context);
    return Positioned(
      bottom: 0,
      right: USize.spaceBtwSections,
      left: USize.spaceBtwSections,
      child: Container(
        height: USize.searchBarHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(USize.borderRadiusLg),
            color: dark ? UColors.dark : UColors.white,
            boxShadow: UShadow.searchBarShadow
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [

              /// search bar icon
              Icon(Iconsax.search_normal, color: UColors.darkGrey),
              SizedBox(width: USize.spaceBtwItems),

              /// search bar title
              Text(UTexts.searchInStore, style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        ),
      ),
    );
  }
}