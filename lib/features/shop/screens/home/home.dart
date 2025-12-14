import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:up_store/common/widgets/layout/grid_layout.dart';
import 'package:up_store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:up_store/common/widgets/textfields/search_bar.dart';
import 'package:up_store/common/widgets/texts/section_heading.dart';
import 'package:up_store/features/shop/controllers/home_controller.dart';

import 'package:up_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:up_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:up_store/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:up_store/features/shop/screens/home/widgets/promo_slider.dart';


import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -----[Upper Part]------
            Stack(
              children: [
                /// total height + 10
                SizedBox(height: USize.homePrimaryHeaderHeight + 10),

                /// primary header container
                UPrimaryHeaderContainer(
                  height: USize.homePrimaryHeaderHeight,
                  child: Column(
                    children: [
                      /// App Bar
                      UHomeAppBar(),
                      SizedBox(height: USize.spaceBtwSections),

                      /// Home Categories
                      UHomeCategories(),
                    ],
                  ),
                ),

                /// search bar
                USearchBar(),
              ],
            ),

            /// -----[Lower Part]------
            Column(
              children: [
                /// Banner
                UPromoSlider(
                  banners: [
                    UImages.homeBanner1,
                    UImages.homeBanner2,
                    UImages.homeBanner3,
                    UImages.homeBanner4,
                    UImages.homeBanner5,
                  ],
                ),
                SizedBox(height: USize.spaceBtwSections),

                /// Section Heading
                USectionHeading(title: UTexts.sectionHeading, onPressed: () {}),

                /// GridView of Product Card
                UGridLayout(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return UProductCardVertical();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
