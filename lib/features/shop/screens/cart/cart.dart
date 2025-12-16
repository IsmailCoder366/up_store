import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/button/elevated_button.dart';

import 'package:up_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:up_store/features/shop/screens/checkout/check_out.dart';

import 'package:up_store/utils/constants/helpers/helper_function.dart';

import 'package:up_store/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return Scaffold(
      /// AppBar
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),

      /// Body
      body: Padding(
        padding: UPadding.padding,
        child: UCartItems(),
      ),

      /// Bottom Navigation Bar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USize.defaultSpace),
        child: UElevatedButton(child: Text('CheckOut \&254'), onPressed: (){
          Get.to(() => CheckOutScreen());
        }),
      ),
    );
  }
}


