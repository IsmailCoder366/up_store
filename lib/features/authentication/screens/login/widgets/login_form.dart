import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/button/elevated_button.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: UTexts.email,
          ),
        ),
        SizedBox(height: USize.spaceBtwInputFields),
        /// Password
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye),
              labelText: UTexts.password
          ),
        ),
        SizedBox(height: USize.spaceBtwInputFields / 2),
        /// Remember Me and Forgot Password
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Remember Me
            Row(
              children: [
                Checkbox(value: true, onChanged: (value){

                }),
                Text(UTexts.rememberMe)
              ],
            ),

            /// Forgot Password
            TextButton(onPressed: (){}, child: Text(UTexts.forgotPassword))

          ],
        ),
        SizedBox(height: USize.spaceBtwSections),
        /// Sign In
        UElevatedButton(child: Text(UTexts.login), onPressed: (){}),
        SizedBox(height: USize.spaceBtwItems / 2),
        /// Create Account
        UElevatedButton(child: Text(UTexts.createAccount), onPressed: (){}),


      ],
    );
  }
}