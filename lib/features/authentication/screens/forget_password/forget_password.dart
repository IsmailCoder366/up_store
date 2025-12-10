import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/button/elevated_button.dart';
import 'package:up_store/features/authentication/screens/forget_password/reset_password.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: UPadding.padding, child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Title and subtitles


            /// Tile
            Text(UTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: USize.spaceBtwItems / 2),

            /// subtitle
            Text(UTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(height: USize.spaceBtwSections * 2),


            /// Form
            TextFormField(
              decoration: InputDecoration(
                labelText: UTexts.forgetPasswordEmail,
                prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            SizedBox(height: USize.spaceBtwSections * 2),

            /// Submit Button
            UElevatedButton(child: Text(UTexts.forgetPasswordSubmit), onPressed: (){
              Get.to(ResetPasswordScreen());
            })
          ],
        ),),
      ),
    );
  }
}
