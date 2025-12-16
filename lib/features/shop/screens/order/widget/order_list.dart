import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UOrderListItems extends StatelessWidget {
  const UOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = UHelperFunction.isDarkMode(context);
    return ListView.separated(

      separatorBuilder: (context, index) => SizedBox(height: USize.spaceBtwItems),
      itemCount: 10,
      itemBuilder: (context, index) {
        return URoundedContainer(
          showBorder: true,
          backgroundColor: dark ? UColors.dark : UColors.light,
          padding: EdgeInsets.all(USize.md),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// 1- Row
              Row(
                children: [
                  Icon(Iconsax.ship),
                  SizedBox(width: USize.spaceBtwItems / 2),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Processing',
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: UColors.primary,
                            fontWeightDelta: 1,
                          ),
                        ),
                        Text(
                          '01 Jan 2025',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.arrow_right_34, size: USize.iconSm),
                  ),
                ],
              ),
              SizedBox(height: USize.spaceBtwItems),
              /// 2- Row
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Iconsax.tag),
                        SizedBox(width: USize.spaceBtwItems / 2),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '#539',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Iconsax.calendar),
                        SizedBox(width: USize.spaceBtwItems / 2),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Shipping Data',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '06 Jan 2025',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
