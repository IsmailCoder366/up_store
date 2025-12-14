import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/brands/brands_card.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/common/widgets/images/rounded_image.dart';
import 'package:up_store/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:up_store/common/widgets/textfields/search_bar.dart';
import 'package:up_store/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:up_store/common/widgets/texts/section_heading.dart';
import 'package:up_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:up_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:up_store/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:up_store/features/shop/screens/store/widgets/store_primary_header.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/enums.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 300,
              pinned: true,
              floating: true,
              flexibleSpace: Column(
                children: [
                  /// primary Header
                  UStorePrimaryHeader(),
                 SizedBox(height: USize.spaceBtwItems),

                 /// Brands heading and brand card
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: USize.defaultSpace),
                    child: Column(
                      children: [
                        /// Brands Heading
                        USectionHeading(title: 'Brands', onPressed: (){}),

                        /// Brand Card
                        SizedBox(
                          height: USize.brandCardHeight,
                          child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(width: USize.spaceBtwItems),
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            shrinkWrap: true,
                            itemBuilder: (context, index) =>  UBrandCard(),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}