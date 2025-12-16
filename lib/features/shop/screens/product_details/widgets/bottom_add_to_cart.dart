import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/icon/circular_icon.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UBottomAddToCart extends StatelessWidget {
  const UBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return Container(
      decoration: BoxDecoration(
        color: dark ? UColors.darkerGrey : UColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(USize.cardRadiusLg),
          topRight: Radius.circular(USize.cardRadiusLg),
        )
      ),
      padding: EdgeInsets.symmetric(horizontal: USize.defaultSpace, vertical: USize.defaultSpace / 2),
      child: Row(
        children: [

          /// Decrement Button
          UCircularIcon(
            icon: Iconsax.minus,
            backgroundColor: UColors.darkGrey,
            width: 40.0,
            height: 40.0,
            color: UColors.white,
          ),
          SizedBox(width: USize.spaceBtwItems),

          /// Counter Text
          Text('2', style: Theme.of(context).textTheme.titleSmall),
          SizedBox(width: USize.spaceBtwItems),


          /// Increment Button
          UCircularIcon(
            icon: Iconsax.add,
            backgroundColor: UColors.black,
            width: 40.0,
            height: 40.0,
            color: UColors.white
          ),
          Spacer(),
          /// Add to Cart Button
          ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(USize.md),
            backgroundColor: UColors.black,
            side: BorderSide(color: UColors.black)
          ),child: Row(
            children: [
              Icon(Iconsax.shopping_bag),
              SizedBox(width: USize.spaceBtwItems /2),
              Text('Add to Cart'),
            ],
          ),)
        ],
      ),
    );
  }
}
