import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/common/widgets/texts/section_heading.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UBillingPaymentSection extends StatelessWidget {
  const UBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = UHelperFunction.isDarkMode(context);
    return Column(
      children: [

        /// payment method
        USectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){}),
        SizedBox(height: USize.spaceBtwItems / 2),
        Row(
          children: [

            /// Payment logo
            URoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? UColors.light : UColors.white,
              padding: EdgeInsets.all(USize.sm),
              child: Image(image: AssetImage(UImages.googlePay ), fit: BoxFit.contain,),
            ),
            SizedBox(width: USize.spaceBtwItems /2),

            /// payment name
            Text('Google Pay', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
