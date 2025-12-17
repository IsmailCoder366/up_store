import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/common/widgets/icon/circular_icon.dart';
import 'package:up_store/common/widgets/images/rounded_image.dart';
import 'package:up_store/common/widgets/products/product_card/product_card_horizontal.dart';
import 'package:up_store/common/widgets/texts/section_heading.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = UHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('Sports', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.padding,
          child: Column(children: [
            USectionHeading(title: 'Sports shoes', onPressed: (){}),

            SizedBox(height: USize.spaceBtwItems / 2),

            /// Horizontal product Card
            SizedBox(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: USize.spaceBtwItems / 2),
                  scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index){
                      return UProductCardHorizontal();
                    })),


          ]),
        ),
      ),
    );
  }
}


