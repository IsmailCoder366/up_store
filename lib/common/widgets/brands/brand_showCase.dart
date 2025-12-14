import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/brands/brands_card.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';

import 'package:up_store/utils/constants/sizes.dart';

class UBrandShowCase extends StatelessWidget {
  const UBrandShowCase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return URoundedContainer(
      showBorder: true,
      borderColor: UColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(USize.md),
      margin: EdgeInsets.only(bottom: USize.spaceBtwItems),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UBrandCard(
            /// brand with product card
            showBorder: false,
          ),
          Row(
            children: images
                .map((image) => buildBrandImage(dark, image))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget buildBrandImage(bool dark, String image) {
    return Expanded(
      child: URoundedContainer(
        height: 100,
        margin: const EdgeInsets.only(right: USize.md),
        padding: const EdgeInsets.all(USize.md),
        backgroundColor: dark ? UColors.darkGrey : UColors.light,
        child: Image(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
