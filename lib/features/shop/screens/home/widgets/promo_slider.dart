import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/images/rounded_image.dart';
import 'package:up_store/features/shop/controllers/home_controller.dart';
import 'package:up_store/features/shop/screens/home/widgets/banners_dot_navigation.dart';

import 'package:up_store/utils/constants/sizes.dart';

class UPromoSlider extends StatelessWidget {
  const UPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Padding(
        padding: const EdgeInsets.all(USize.defaultSpace),
        child: Column(
            children: [
        /// Carousel Slider
        CarouselSlider(
        items: banners.map((banner) => URounedImage(imageUrl: banner)).toList(),
    options: CarouselOptions(viewportFraction: 1.0, onPageChanged: (index, reason) => controller.onPageChanged(index),),
          carouselController: controller.carouselController,
    ),
    SizedBox(height: USize.spaceBtwItems),
    BannerDotNavigation()
    ],
    ),
    );
    }
}