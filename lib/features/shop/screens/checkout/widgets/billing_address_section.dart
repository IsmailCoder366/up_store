import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/texts/section_heading.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UBillingAddressSectionScreen extends StatelessWidget {
  const UBillingAddressSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
            USectionHeading(title: 'Billing Address', buttonTitle: 'Change', onPressed: (){}),
        Text('ismail', style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: USize.spaceBtwItems),
        Row(
          children: [
            Icon(Icons.phone, size: USize.iconSm, color: UColors.darkGrey),
            SizedBox(width: USize.spaceBtwItems),
            Text('+923305827226')
          ],
        ),
        SizedBox(height: USize.spaceBtwItems /2),
        Row(
          children: [
            Icon(Icons.location_history, size: USize.iconSm, color: UColors.darkGrey),
            SizedBox(width: USize.spaceBtwItems),
            Expanded(child: Text('Banda Daud Shah Karak', softWrap: true))
          ],
        ),
      ],
    );
  }
}
