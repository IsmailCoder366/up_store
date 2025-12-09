import 'package:flutter/material.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';

class USocialButton extends StatelessWidget {
  const USocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Google Button
        buildButton(UImages.googleIcon, (){}),
        SizedBox(width: USize.spaceBtwItems),

        /// Facebook Button
        buildButton(UImages.facebookIcon, (){}),


      ],
    );
  }

  Container buildButton(String image, VoidCallback onPressed) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: UColors.grey),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
            onPressed: (){

            },
            icon: Image.asset(image, height: USize.iconMd, width: USize.iconMd,)),
      );
  }
}