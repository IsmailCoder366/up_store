import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/layout/grid_layout.dart';
import 'package:up_store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:up_store/utils/constants/sizes.dart';

class USortableProducts extends StatelessWidget {
  const USortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Filters
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: ['Name', 'Lower Price', 'Higher Price', 'Sale', 'Newest']
              .map((filter) {
            return DropdownMenuItem(
              value: filter,
              child: Text(filter),
            );
          })
              .toList(),
        ),
        SizedBox(height: USize.spaceBtwSections),
        /// product card
        UGridLayout(
          itemCount: 10,
          itemBuilder: (context, index) => UProductCardVertical(),
        ),
      ],
    );
  }
}