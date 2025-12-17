import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/brands/brands_card.dart';
import 'package:up_store/common/widgets/layout/grid_layout.dart';
import 'package:up_store/common/widgets/texts/section_heading.dart';
import 'package:up_store/features/shop/screens/brand/brand_products.dart';
import 'package:up_store/utils/constants/sizes.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('Brand', style: Theme.of(context).textTheme.headlineSmall)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.padding,
          child: Column(
            children: [
              USectionHeading(title: 'Brands', showActionButton: false),
              SizedBox(height: USize.spaceBtwItems),

              /// List of Brand
              UGridLayout(itemCount: 10, itemBuilder: (context, index) => UBrandCard(ontap: () => Get.to(() => BrandProductsScreen()),), mainAxisExtent: 80.0,)
            ],
          ),
        ),
      ),
    );
  }
}
