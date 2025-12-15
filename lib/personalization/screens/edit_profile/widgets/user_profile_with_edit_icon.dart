import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/icon/circular_icon.dart';
import 'package:up_store/common/widgets/images/user_profile_logo.dart';

class UProfileWithEditIcon extends StatelessWidget {
  const UProfileWithEditIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: USerProfileLogo()),
        Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: Center(child: UCircularIcon(
              icon: Iconsax.edit ,
            )))
      ],
    );
  }
}