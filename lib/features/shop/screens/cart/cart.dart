import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/button/elevated_button.dart';
import 'package:up_store/common/widgets/icon/circular_icon.dart';
import 'package:up_store/common/widgets/images/rounded_image.dart';
import 'package:up_store/common/widgets/products/cart/cart_items.dart';
import 'package:up_store/common/widgets/products/cart/product_quantity_with_add_remove.dart';
import 'package:up_store/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:up_store/common/widgets/texts/product_price_text.dart';
import 'package:up_store/common/widgets/texts/product_title_text.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/images.dart';
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
        child: ListView.separated(
          separatorBuilder: (context, index) =>
              SizedBox(height: USize.spaceBtwSections),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Column(
              children: [
                /// Cart Items
                UCartItem(),
                SizedBox(height: USize.spaceBtwItems),

                /// Price and Counter Button
                Row(
                  children: [

                    /// Extra Space
                    SizedBox(width: 70),

                    /// Quantity Buttons
                    UProductQuantityWithAddRemove(),
                    Spacer(),

                    /// Product Price
                    UProductPriceText(price: '323'),
                  ],
                ),
              ],
            );

            /// Price and Counter Button
          },
        ),
      ),

      /// Bottom Navigation Bar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USize.defaultSpace),
        child: UElevatedButton(child: Text('CheckOut \&254'), onPressed: (){}),
      ),
    );
  }
}


