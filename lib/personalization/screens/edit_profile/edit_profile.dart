import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';

import 'package:up_store/common/widgets/texts/section_heading.dart';
import 'package:up_store/personalization/screens/edit_profile/widgets/user_profile_with_edit_icon.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/sizes.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.headlineMedium!.apply(
            color: dark ? UColors.white : UColors.black,
          ),
        ),
      ),
      body: Padding(
        padding: UPadding.padding,
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              /// User Profile with edit icon
              UProfileWithEditIcon(),
              SizedBox(height: USize.spaceBtwSections),
          
              /// Divider
              Divider(),
              SizedBox(height: USize.spaceBtwItems),
          
              /// Account Settings Heading
              USectionHeading(title: 'Account Settings', showActionButton: false),
              SizedBox(height: USize.spaceBtwItems),
          
              /// Account Details
              USerDetailsRow(
                title: 'Name',
                value: 'Ismail',
                onTap: (){},
              ),
              USerDetailsRow(
                title: 'Username',
                value: 'ismailCoder',
                onTap: (){},
              ),
              SizedBox(height: USize.spaceBtwItems),
          
              /// Divider
              Divider(),
              SizedBox(height: USize.spaceBtwItems),
          
              /// profile section heading
              USectionHeading(title: 'Profile Settings', showActionButton: false),
              SizedBox(height: USize.spaceBtwItems),
          
              /// Profile settings
              USerDetailsRow(
                title: 'User ID',
                value: '54363',
                onTap: (){},
              ),
              USerDetailsRow(
                title: 'Email',
                value: 'ismailCoder366@gmail.com',
                onTap: (){},
              ),
              USerDetailsRow(
                title: 'Phone',
                value: '+92 3305827226',
                onTap: (){},
              ),
              USerDetailsRow(
                title: 'Gender',
                value: 'Male',
                onTap: (){},
              ),
              SizedBox(height: USize.spaceBtwItems),
          
              /// Divider
              Divider(),
              SizedBox(height: USize.spaceBtwItems),
          
              /// close Account Button
              TextButton(onPressed: (){}, child: Text('Close Account', style: TextStyle(color: Colors.red))),

              SizedBox(height: USize.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}

class USerDetailsRow extends StatelessWidget {
  const USerDetailsRow({
    super.key,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34,
    required this.onTap,
  });

  final String title, value;
  final IconData? icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: USize.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(flex: 1, child: Icon(icon, size: USize.iconSm)),
          ],
        ),
      ),
    );
  }
}
