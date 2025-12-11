import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/custom_shapes/circular_container.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_edges_container.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/device_helpers.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  const UPrimaryHeaderContainer({
    super.key, required this.child,
  });
final Widget child;
  @override
  Widget build(BuildContext context) {
    return URoundedEdges(
      child: Container(
        height: USize.primaryHeaderHeight,
        color: UColors.primary,
        child: Stack(
          children: [
      
            /// Circular Container
            Positioned(
              top: -200,
              right: -180,
              child: UCircularContainer(
                height: USize.primaryHeaderHeight,
                width: USize.primaryHeaderHeight,
                backgroundColor: UColors.white.withValues(alpha: 0.1),
      
              ),
            ),
      
      
            /// Circular Container
            Positioned(
                top: 50,
                right: -300,
                child: UCircularContainer(
                height: USize.primaryHeaderHeight,
                  width: USize.primaryHeaderHeight,
                  backgroundColor: UColors.white.withValues(alpha: 0.1),
                )
            ),
      
            /// Child
            child
          ],
        ),
      ),
    );
  }
}

