import 'package:flutter/material.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/common/widgets/images/circular_image.dart';
import 'package:up_store/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:up_store/common/widgets/texts/product_price_text.dart';
import 'package:up_store/common/widgets/texts/product_title_text.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UProductMetaData extends StatelessWidget {
  const UProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UPadding.padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Sale Tag, Sale Price, Actual Price and Share Button
          Row(
            children: [


              /// Sale Tag
              URoundedContainer(
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
              SizedBox(width: USize.spaceBtwItems),

              /// Sale Price
              Text(
                '\$350',
                style: Theme.of(context).textTheme.titleSmall!.apply(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(width: USize.spaceBtwItems),

              /// Actual Price
              UProductPriceText(price: '250', isLarge: true),
              Spacer(),


              /// Share Button
              IconButton(onPressed: (){}, icon: Icon(Icons.share))
            ],
          ),
          SizedBox(height: USize.spaceBtwItems / 1.5),

          /// Product Title
          UProductTitleText(title: 'Apple iphone 13'),
          SizedBox(height: USize.spaceBtwItems / 1.5),

          /// Product Status
          Row(
            children: [
              UProductTitleText(title: 'Status'),
              SizedBox(width: USize.spaceBtwItems),
              Text('In Stock', style: Theme.of(context).textTheme.titleMedium)
            ],
          ),
          SizedBox(height: USize.spaceBtwItems / 1.5),


          /// product brand image with title
          Row(
            children: [

              /// brand image
              UCircularImage(
                  padding: 0,
                  image: UImages.bataLogo, width: 32, height: 32),
              SizedBox(width: USize.spaceBtwItems),

              /// brand title and icon
              UBrandTitleWithVerifyIcon(title: 'Bata')
            ],
          )
        ],
      ),
    );
  }
}