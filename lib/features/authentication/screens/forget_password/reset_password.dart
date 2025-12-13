import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/button/elevated_button.dart';
import 'package:up_store/features/authentication/screens/login/login.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Get.offAll(LoginScreen());
          }, icon: Icon(CupertinoIcons.clear)),
          SizedBox(width: USize.spaceBtwItems,)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: UPadding.padding, child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Image
            Image.asset(UImages.accountCreatedImage),
            SizedBox(height: USize.spaceBtwSections),

            /// Heading
            Text(UTexts.resetForgetPasswordHeading, style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: USize.spaceBtwItems),

            /// SubHeading
            Text(UTexts.resetForgetPasswordSubHeading, style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(height: USize.spaceBtwItems),

            /// Body Text
            Text(UTexts.resetForgetPasswordBody, style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.center),
            SizedBox(height: USize.spaceBtwSections * 2),

            /// Done Button
            UElevatedButton(child: Text(UTexts.resetForgetPasswordDoneButton), onPressed: (){
            }),
            SizedBox(height: USize.spaceBtwSections),

            /// Resend Email Button
            TextButton(onPressed: (){

            }, child: Text(UTexts.resetForgetPasswordResendEmailButton))
          ],
        ),),
      )
    );
  }
}
