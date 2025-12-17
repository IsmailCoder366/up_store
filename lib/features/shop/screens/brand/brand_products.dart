import 'package:flutter/material.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/brands/brands_card.dart';
import 'package:up_store/common/widgets/products/sortable_products.dart';
import 'package:up_store/features/shop/screens/all_products/all_products.dart';
import 'package:up_store/utils/constants/sizes.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('Bata', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: UPadding.padding, child:
          Column(
            children: [
                    UBrandCard(),
              SizedBox(height: USize.spaceBtwSections),
              USortableProducts(),
            ],
          )),
      ),
    );
  }
}
