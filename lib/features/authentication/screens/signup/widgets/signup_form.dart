import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/button/elevated_button.dart';
import 'package:up_store/features/authentication/screens/signup/verify_email.dart';
import 'package:up_store/features/authentication/screens/signup/widgets/privacy_policy_checkbox.dart';
import 'package:up_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class USignUpForm extends StatelessWidget {
  const USignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// First & Last Name
        Row(
          children: [

            /// First Name
            Expanded(
              child: TextFormField(
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
          decoration: InputDecoration(
              labelText: UTexts.signUpEmail,
              prefixIcon: Icon(Iconsax.direct_right)
          ),
        ),
        SizedBox(height: USize.spaceBtwInputFields),

        /// Phone Number
        TextFormField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              labelText: UTexts.signUpEmail,
              prefixIcon: Icon(Iconsax.call)
          ),
        ),
        SizedBox(height: USize.spaceBtwInputFields),

        /// Password
        TextFormField(
          decoration: InputDecoration(
              labelText: UTexts.signUpEmail,
              prefixIcon: Icon(Iconsax.password_check)
          ),
        ),
        SizedBox(height: USize.spaceBtwItems),

        /// Checkbox
        PrivacyPolicyCheckBox(),
        SizedBox(height: USize.spaceBtwInputFields),

        /// Button
        UElevatedButton(child: Text(UTexts.createAccount), onPressed: (){
        Get.to(VerifyEmailScreen());
        })
      ],
    );
  }
}

