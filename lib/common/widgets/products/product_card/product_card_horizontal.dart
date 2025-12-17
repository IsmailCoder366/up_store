import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/common/widgets/icon/circular_icon.dart';
import 'package:up_store/common/widgets/images/rounded_image.dart';
import 'package:up_store/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:up_store/common/widgets/texts/product_price_text.dart';
import 'package:up_store/common/widgets/texts/product_title_text.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UProductCardHorizontal extends StatelessWidget {
  const UProductCardHorizontal({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final bool dark = UHelperFunction.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(USize.productImageRadius),
          color: dark ? UColors.darkerGrey : UColors.light
      ),
      child: Row(
        children: [

          /// leftPortion
          URoundedContainer(
            height: 120,
            padding:  EdgeInsets.all(USize.sm),
            backgroundColor: dark ? UColors.dark : UColors.light,
            child: Stack(
              children: [
                SizedBox(
                    width : 120,
                    height: 120,
                    child: Center(child: URoundedImage(imageUrl: UImages.productImage15))),
                /// Discount Tag
                Positioned(
                  top: 0,

                  child: URoundedContainer(
                    radius: USize.sm,
                    backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                    padding: EdgeInsets.symmetric(
                      horizontal: USize.sm,
                      vertical: USize.xs,
                    ),
                    child: Text(
                      '20%',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: UColors.black),
                    ),
                  ),
                ),

                /// Favourite Button
                Positioned(
                  right: -5,
                  top: -5,
                  child: UCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          /// right portion
          SizedBox(
            width: 172.0,
            child: Padding(
              padding: const EdgeInsets.only(left: USize.sm, top: USize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UProductTitleText(title: 'Blue Bata Shoes', smallSize: true),
                      SizedBox(height: USize.spaceBtwItems / 2 ),

                      /// Product Brand
                      UBrandTitleWithVerifyIcon(title: 'Bata')
                    ],
                  ),
                  Spacer(),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        UProductPriceText(price: '65'),


                        Container(
                          width: USize.iconLg * 1.2,
                          height: USize.iconLg * 1.2,

                          decoration: BoxDecoration(
                            color: UColors.primary,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Icon(Iconsax.add, color: UColors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}