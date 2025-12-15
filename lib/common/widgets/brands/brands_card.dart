import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/common/widgets/images/rounded_image.dart';
import 'package:up_store/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:up_store/utils/constants/enums.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UBrandCard extends StatelessWidget {
  const UBrandCard({
    super.key,
    this.showBorder = true,
  });

  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return URoundedContainer(
      height: USize.brandCardHeight,

      showBorder: showBorder,
      padding: EdgeInsets.all(USize.sm),
      backgroundColor: Colors.transparent,
      child: Row(
        children: [
          /// Brand Image
          Flexible(child: URoundedImage(imageUrl: UImages.bataLogo)),
          SizedBox(width: USize.spaceBtwItems / 2),


          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Brand name & verify Icon
                UBrandTitleWithVerifyIcon(
                  title: 'Bata',
                  brandTextSize: TextSizes.large,
                ),
                /// products Text
                Text('172 products', style: Theme.of(context).textTheme.labelMedium, overflow: TextOverflow.ellipsis,)

              ],
            ),
          ),
        ],
      ),
    );
  }
}