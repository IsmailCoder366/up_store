import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import 'package:up_store/common/widgets/texts/section_heading.dart';
import 'package:up_store/features/shop/screens/order/order.dart';
import 'package:up_store/personalization/screens/address/address.dart';
import 'package:up_store/personalization/screens/profile/widgets/profile_primary_header.dart';
import 'package:up_store/personalization/screens/profile/widgets/settings_menu_tile.dart';
import 'package:up_store/personalization/screens/profile/widgets/user_profile_tile.dart';

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
                    onTap: () => Get.to(AddressScreen()),
                    title: 'My Addressed',
                    subTitle: 'Set shopping delivery addresses',
                    icon: Iconsax.safe_home,

                  ),
                  SettingMenuTile(
                    onTap: (){},
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    icon: Iconsax.shopping_cart,
                  ),
                  SettingMenuTile(
                    onTap: () => Get.to(() => OrderScreen()),
                    title: 'My Order',
                    subTitle: 'In-progress and Completed Orders',
                    icon: Iconsax.bag_tick,
                  ),
                  SizedBox(height: USize.spaceBtwSections),
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(onPressed: (){}, child: Text('LogOut'))),
                  SizedBox(height: USize.spaceBtwSections),
                ]
              ),
            ),

          ],
        ),
      ),
    );
  }
}
