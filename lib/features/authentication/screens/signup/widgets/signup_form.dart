import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/button/elevated_button.dart';
import 'package:up_store/features/authentication/controller/signup/signup_controller.dart';
import 'package:up_store/features/authentication/screens/signup/verify_email.dart';
import 'package:up_store/features/authentication/screens/signup/widgets/privacy_policy_checkbox.dart';

import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';
import 'package:up_store/utils/validations/validations.dart';

class USignUpForm extends StatelessWidget {
  const USignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.instance;

    return Form(
      key: controller.signUpFormKey,
      child: Column(
        children: [
          /// First & Last Name
          Row(
            children: [

              /// First Name
              Expanded(
                child: TextFormField(
                  validator: (value) => UValidator.validateEmptyText('First Name', value),
                  decoration: InputDecoration(
                      labelText: UTexts.signUpFirstName,
                      prefixIcon: Icon(Iconsax.user)
                  ),
                ),
              ),
              SizedBox(width: USize.spaceBtwInputFields),

              /// Last Name
              Expanded(
                child: TextFormField(
                  validator: (value) => UValidator.validateEmptyText('Last Name',value),
                  decoration: InputDecoration(
                      labelText: UTexts.signUpLastName,
                      prefixIcon: Icon(Iconsax.user)
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: USize.spaceBtwInputFields),

          /// Email
          TextFormField(
            validator: (value) => UValidator.validateEmail(value),
            decoration: InputDecoration(
                labelText: UTexts.signUpEmail,
                prefixIcon: Icon(Iconsax.direct_right)
            ),
          ),
          SizedBox(height: USize.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            validator: (value) => UValidator.validatePhoneNumber(value),
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                labelText: UTexts.signUpPhoneNum,
                prefixIcon: Icon(Iconsax.call)
            ),
          ),
          SizedBox(height: USize.spaceBtwInputFields),

          /// Password
          TextFormField(
            validator: (value) => UValidator.validatePassword(value),
            decoration: InputDecoration(
                labelText: UTexts.signUpPassword,
                prefixIcon: Icon(Iconsax.password_check)
            ),
          ),
          SizedBox(height: USize.spaceBtwItems),

          /// Checkbox
          PrivacyPolicyCheckBox(),
          SizedBox(height: USize.spaceBtwInputFields),

          /// Button
          UElevatedButton(onPressed: controller.registerUser, child: Text(UTexts.createAccount))
        ],
      ),
    );
  }
}

