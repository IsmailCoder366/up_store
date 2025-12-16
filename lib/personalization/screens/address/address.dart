import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/personalization/screens/address/add_new_address.dart';
import 'package:up_store/personalization/screens/address/widgets/single_address.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/sizes.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -----AppBar-----
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.padding,
          child: Column(
            children: [
              USingleAddress(isSelected: true),
              SizedBox(height: USize.spaceBtwItems),
              USingleAddress(isSelected: false),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to((AddNewAddressScreen()));
        },
        backgroundColor: UColors.primary,
        child: Icon(Iconsax.add),
      ),
    );
  }
}
