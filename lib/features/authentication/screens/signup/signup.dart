import 'package:flutter/material.dart';

import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/button/social_buttons.dart';
import 'package:up_store/common/widgets/login_signup/form_divider.dart';
import 'package:up_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:up_store/features/authentication/screens/signup/widgets/signup_header.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.padding,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// -----Header------

              /// Title
              USignUpHeader(),
              SizedBox(height: USize.spaceBtwSections),

              /// -----Form-----
              USignUpForm(),
              SizedBox(height: USize.spaceBtwSections),
              
              /// -----Divider-----
              ULoginSignUp(title: UTexts.orSignUpWith),
              SizedBox(height: USize.spaceBtwSections),

              /// Social Buttons
              USocialButton()
            ],
          ),
        ),
      ),
    );
  }
}