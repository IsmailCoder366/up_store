import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/features/shop/screens/cart/cart.dart';
import 'package:up_store/utils/constants/colors.dart';

class UCartCounterIcon extends StatelessWidget {
  const UCartCounterIcon({
    super.key,
     this.dark = false,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        /// Cart Icon
        IconButton(onPressed: (){
          Get.to(() => CartScreen());
        }, icon: Icon(Iconsax.shopping_bag),
          color: UColors.light,),

        /// Counter Text
        Positioned(
          right: 6.0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                color: dark ? UColors.light : UColors.black,
                shape: BoxShape.circle
            ),
            child: Center(child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(fontSizeFactor: 0.8, color: dark ? UColors.black : UColors.light))),
          ),
        )
      ],
    );
  }
}