import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:up_store/common/widgets/textfields/search_bar.dart';
import 'package:up_store/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UStorePrimaryHeader extends StatelessWidget {
  const UStorePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// total height + 10
        SizedBox(height: USize.storePrimaryHeaderHeight + 10),

        /// primary header container
        UPrimaryHeaderContainer(
          height: USize.storePrimaryHeaderHeight,
          child: UAppBar(
            title: Text(
              'Store',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.apply(color: UColors.white),
            ),
            actions: [UCartCounterIcon()],
          ),
        ),

        /// search bar
        USearchBar(),
      ],
    );
  }
}