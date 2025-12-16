import 'package:flutter/material.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UBillingAmountSection extends StatelessWidget {
  const UBillingAmountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        /// SubTotal
        Row(
          children: [
            Expanded(child: Text('SubTotal', style: Theme.of(context).textTheme.bodyMedium)),
            Text('\$454', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: USize.spaceBtwItems / 2),

        /// Shipping Fee
        Row(
          children: [
            Expanded(child: Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium)),
            Text('\$44', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: USize.spaceBtwItems / 2),

        ///Order Total
        Row(
          children: [
            Expanded(child: Text('Order Total', style: Theme.of(context).textTheme.bodyMedium)),
            Text('\$4524', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}