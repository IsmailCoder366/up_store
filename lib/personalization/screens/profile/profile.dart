import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:up_store/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:up_store/common/widgets/images/circular_image.dart';
import 'package:up_store/common/widgets/texts/section_heading.dart';
import 'package:up_store/personalization/screens/widgets/profile_primary_header.dart';
import 'package:up_store/personalization/screens/widgets/settings_menu_tile.dart';
import 'package:up_store/personalization/screens/widgets/user_profile_tile.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// primary header
            UProfilePrimaryHeader(),
        
            /// Details
            Padding(
              padding: const EdgeInsets.all(USize.defaultSpace),
              child: Column(
                children: [
                  /// User profile details
                  USerProfileTile(),
                  SizedBox(height: USize.spaceBtwSections),
                  /// Account setting headlines
                  USectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
        
                  /// Settings Menu
                  SettingMenuTile(
                    title: 'My Addressed',
                    subTitle: 'Set shopping delivery addresses',
                    icon: Iconsax.safe_home,
                  ),
                  SettingMenuTile(
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    icon: Iconsax.shopping_cart,
                  ),
                  SettingMenuTile(
                    title: 'My Order',
                    subTitle: 'In-progress and Completed Orders',
                    icon: Iconsax.bag_tick,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
