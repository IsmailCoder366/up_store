import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/sizes.dart';

class USingleAddress extends StatelessWidget {
  const USingleAddress({
    super.key, required this.isSelected,
  });
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return URoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: isSelected ? UColors.primary.withValues(alpha: 0.5 ) : Colors.transparent,
      borderColor: isSelected ? Colors.transparent :dark ? UColors.darkerGrey : UColors.grey,
      padding: EdgeInsets.all(USize.md),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// User Name
              Text(
                'Unknown Pro',
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: USize.spaceBtwItems / 2),
              /// Phone num
              Text(
                '+92 312345678',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: USize.spaceBtwItems / 2),

              /// Address
              Text('House No.295, Karak Banda Daud Shah'),

            ],
          ),
         if(isSelected) Positioned(
              top: 0,
              bottom: 0,
              right: 6,
              child:Icon(Iconsax.tick_circle5))
        ],
      )
    );
  }
}