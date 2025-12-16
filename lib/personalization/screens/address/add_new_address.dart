import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/button/elevated_button.dart';
import 'package:up_store/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// ---[AppBar]----
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'Add New Address',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),

      /// ---[Body]----
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.padding,
          child: Column(
            children: [
              /// Name
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: 'Name',
                ),
              ),
              SizedBox(height: USize.spaceBtwInputFields),

              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.mobile),
                  labelText: 'Phone No',
                ),
              ),
              SizedBox(height: USize.spaceBtwInputFields),

              Row(
                children: [
                  /// Street
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.building_31),
                        labelText: 'Street',
                      ),
                    ),
                  ),
                  SizedBox(width: USize.spaceBtwInputFields),

                  /// Postal code
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.code),
                        labelText: 'Postal Code',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: USize.spaceBtwInputFields),
              Row(
                children: [
                  /// City
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.building),
                        labelText: 'City',
                      ),
                    ),
                  ),
                  SizedBox(width: USize.spaceBtwInputFields),
                  /// State
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.activity),
                        labelText: 'State',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: USize.spaceBtwInputFields),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.global),
                  labelText: 'Country',
                ),
              ),
              SizedBox(height: USize.spaceBtwSections),
              /// Save Button
              UElevatedButton(child: Text('Save'), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
