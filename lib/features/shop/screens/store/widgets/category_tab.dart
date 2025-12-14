import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/brands/brand_showCase.dart';
import 'package:up_store/common/widgets/layout/grid_layout.dart';
import 'package:up_store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:up_store/common/widgets/texts/section_heading.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UCatogeryTab extends StatelessWidget {
  const UCatogeryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: USize.defaultSpace),
          child: Column(
            children: [
              /// brand showcase 1
              UBrandShowCase(
                images: [
                  UImages.productImage47,
                  UImages.productImage43,
                  UImages.productImage1,
                ],
              ),

              /// brand showcase 2
              UBrandShowCase(
                images: [
                  UImages.productImage7,
                  UImages.productImage3,
                  UImages.productImage41,
                ],
              ),
              SizedBox(height: USize.spaceBtwItems),

              /// you might like section heading
              USectionHeading(title: 'You might like', onPressed: () {}),

              /// grid layout product
              UGridLayout(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return UProductCardVertical();
                },
              ),
              SizedBox(height: USize.spaceBtwSections)
            ],
          ),
        ),
      ],
    );
  }
}
