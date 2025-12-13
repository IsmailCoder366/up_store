import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/custom_shapes/circular_container.dart';
import 'package:up_store/common/widgets/image_text/vertical_image_text.dart';
import 'package:up_store/common/widgets/textfields/search_bar.dart';

import 'package:up_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:up_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:up_store/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                UHomeCategories()
              ],
            ),
          ),

          /// search bar
          USearchBar(),
        ],
      ),
    );
  }
}




