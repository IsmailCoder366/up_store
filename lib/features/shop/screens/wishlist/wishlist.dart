import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/icon/circular_icon.dart';
import 'package:up_store/common/widgets/layout/grid_layout.dart';
import 'package:up_store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:up_store/navigation_menu.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/sizes.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return Scaffold(

      /// Custom app Bar
      appBar: UAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          UCircularIcon(
            color: dark ? UColors.darkGrey : UColors.black,
            icon: Iconsax.add,
            onPressed: () =>
                NavigationController.instance.selectedIndex.value = 0,
          ),
        ],
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(USize.defaultSpace),
          child: UGridLayout(
            itemCount: 10,
            itemBuilder: (context, index) => UProductCardVertical(),
          ),
        ),
      ),
    );
  }
}
