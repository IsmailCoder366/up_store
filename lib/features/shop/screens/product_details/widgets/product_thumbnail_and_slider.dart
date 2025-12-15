import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/icon/circular_icon.dart';
import 'package:up_store/common/widgets/images/rounded_image.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UProductThumbnailAndSlider extends StatelessWidget {
  const UProductThumbnailAndSlider({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return Container(
      color: dark ? UColors.darkerGrey : UColors.light,
      child: Stack(
        children: [
          /// [Image] - Main Image or Thumbnail
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(
                USize.productImageRadius * 2,
              ),
              child: Center(
                child: Image(image: AssetImage(UImages.productImage3)),
              ),
            ),
          ),

          /// Image Slider
          Positioned(
            left: USize.defaultSpace,
            right: 0,
            bottom: 30,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    SizedBox(width: USize.spaceBtwItems),
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, index) => URoundedImage(
                  width: 80,
                  backgroundColor: dark ? UColors.dark : UColors.white,
                  padding: EdgeInsets.all(USize.sm),
                  border: Border.all(color: UColors.primary),
                  imageUrl: UImages.productImage7,
                ),
              ),
            ),
          ),

          /// [AppBar] back arrow and favourite icon
          UAppBar(
            showBackArrow: true,
            actions: [
              UCircularIcon(icon: Iconsax.heart5, color: Colors.red),
            ],
          ),
        ],
      ),
    );
  }
}