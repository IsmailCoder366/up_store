import 'package:flutter/material.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/login_signup/form_divider.dart';
import 'package:up_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:up_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:up_store/features/authentication/screens/login/widgets/social_buttons.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/sizes.dart';
import 'package:up_store/utils/constants/text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.padding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// -----[Header]-------
        
        
              ULoginHeader(),
              SizedBox(height: USize.spaceBtwSections),
        
        
              /// ------[Form]--------
        
        
              ULoginForm(),
                SizedBox(height: USize.spaceBtwSections),
        
        
              /// ------[Divider]--------
        
        
              ULoginDivider(title : UTexts.orSignInWith),
              SizedBox(height: USize.spaceBtwSections),
        
        
              /// ------[Footer]------
        
        
              USocialButton()
            ],
          ),
        ),
      ),
    );
  }
}








