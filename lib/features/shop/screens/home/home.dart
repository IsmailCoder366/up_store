import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/custom_shapes/circular_container.dart';
import 'package:up_store/common/widgets/image_text/vertical_image_text.dart';
import 'package:up_store/common/widgets/images/rounded_image.dart';
import 'package:up_store/common/widgets/textfields/search_bar.dart';
import 'package:up_store/features/shop/controllers/home_controller.dart';
import 'package:up_store/features/shop/screens/home/widgets/banners_dot_navigation.dart';

import 'package:up_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:up_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:up_store/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:up_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              /// total height + 10
              SizedBox(height: USize.primaryHeaderHeight + 10),

              /// primary header container
              UPrimaryHeaderContainer(
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

          UPromoSlider(
              banners: [
            UImages.homeBanner1,
            UImages.homeBanner2,
            UImages.homeBanner3,
            UImages.homeBanner4,
            UImages.homeBanner5,
          ]),
        ],
      ),
    );
  }
}
