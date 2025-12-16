import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/button/elevated_button.dart';
import 'package:up_store/features/authentication/screens/login/login.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class SuccessScreen extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final VoidCallback onPressed;
  const SuccessScreen({super.key, required this.title, required this.subTitle, required this.onPressed, required this.image});

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
              Image.asset(image),
              SizedBox(height: USize.spaceBtwSections),

              /// Heading
              Text(title, style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: USize.spaceBtwItems),


              /// Body Text
              Text(subTitle, style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.center),
              SizedBox(height: USize.spaceBtwSections * 2),

              /// Done Button
              UElevatedButton(onPressed: onPressed, child: Text(UTexts.uContinue))
            ],
          ),),
        )
   );
  }
}