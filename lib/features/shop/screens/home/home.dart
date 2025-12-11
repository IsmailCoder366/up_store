import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/textfields/search_bar.dart';

import 'package:up_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:up_store/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// total height + 20
          SizedBox(
          height: USize.primaryHeaderHeight + 10,
        ),

          /// primary header container
          UPrimaryHeaderContainer(
            child: Column(
              children: [
                UHomeAppBar(),
              ],
            ),
          ),

          /// search bar
          USearchBar()
      ]
      )
    );
  }
}