import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:up_store/common/widgets/images/user_profile_logo.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UProfilePrimaryHeader extends StatelessWidget {
  const UProfilePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Total Height
        SizedBox(height: USize.profilePrimaryHeaderHeight + 60),

        /// primary header
        UPrimaryHeaderContainer(
          height: USize.profilePrimaryHeaderHeight,
          child: Container(),
        ),

        /// User Profile
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: USerProfileLogo(),
          ),
        ),
      ],
    );
  }
}

