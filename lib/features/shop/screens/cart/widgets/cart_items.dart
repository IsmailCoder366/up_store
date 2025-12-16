import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/products/cart/cart_items.dart';
import 'package:up_store/common/widgets/products/cart/product_quantity_with_add_remove.dart';
import 'package:up_store/common/widgets/texts/product_price_text.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UCartItems extends StatelessWidget {
  const UCartItems({
    super.key,
    this.showAddRemoveButton = true
  });
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) =>
          SizedBox(height: USize.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          children: [
            /// Cart Items
            UCartItem(),
            if(showAddRemoveButton)SizedBox(height: USize.spaceBtwItems),

            /// Price and Counter Button
            if(showAddRemoveButton)Row(
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
    );
  }
}