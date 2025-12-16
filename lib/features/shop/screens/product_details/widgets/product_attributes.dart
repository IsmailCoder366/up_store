import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/chips/choice_chip.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/common/widgets/texts/product_price_text.dart';
import 'package:up_store/common/widgets/texts/product_title_text.dart';
import 'package:up_store/common/widgets/texts/section_heading.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UProductAttributes extends StatelessWidget {
  const UProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return Column(
      children: [
        /// Selected Attributes Pricing & Description
        URoundedContainer(
          padding: EdgeInsets.all(USize.md),
          backgroundColor: dark ? UColors.darkerGrey : UColors.grey,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title, Price and Stock
              Row(
                children: [
                  /// [Text] - Variation Heading
                  USectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  SizedBox(width: USize.spaceBtwItems),

                  Column(
                    children: [
                      /// Price, Sale Price, Actual Price
                      Row(
                        children: [
                          /// [Text] - Price
                          UProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),

                          /// Actual Price
                          Text(
                            '250',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(
                                  decoration: TextDecoration.lineThrough,
                                ),
                          ),
                          SizedBox(width: USize.spaceBtwItems),

                          /// Sale Price
                          UProductPriceText(price: '200'),
                        ],
                      ),

                      /// Stock Status
                      Row(
                        children: [
                          UProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Attributes Description
              UProductTitleText(
                title: 'This is a product of iphone 11 with 512 GB',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        SizedBox(height: USize.spaceBtwItems),
        /// Attributes  - Colors
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: 'Colors', showActionButton: false),
            SizedBox(height: USize.spaceBtwItems / 2),

            Wrap(
              spacing: USize.sm,
              children: [
                UChoiceChip(
                  text: 'Red',
                  selected: true,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'Orange',
                  selected: false,
                  onSelected: (value) {},
                ),

              ],
            ),
          ],
        ),
        /// Attributes - Size
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: 'Sizes', showActionButton: false),
            SizedBox(height: USize.spaceBtwItems / 2),

            Wrap(
              spacing: USize.sm,
              children: [
                UChoiceChip(
                  text: 'Small',
                  selected: true,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'Medium',
                  selected: false,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'Large',
                  selected: false,
                  onSelected: (value) {},
                ),

              ],
            ),
          ],
        ),
      ],
    );
  }
}
