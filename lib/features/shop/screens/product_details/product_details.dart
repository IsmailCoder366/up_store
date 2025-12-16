import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';
import 'package:up_store/common/styles/padding.dart';

import 'package:up_store/common/widgets/button/elevated_button.dart';
import 'package:up_store/common/widgets/texts/section_heading.dart';
import 'package:up_store/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:up_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:up_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:up_store/features/shop/screens/product_details/widgets/product_thumbnail_and_slider.dart';

import 'package:up_store/utils/constants/helpers/helper_function.dart';

import 'package:up_store/utils/constants/sizes.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return Scaffold(
      /// Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// product Image With Slider
            UProductThumbnailAndSlider(),

            /// ------[Product Details]------
            ///  Price, Title, Stock and Brand
           Padding(
             padding: UPadding.padding,
             child: Column(
               children: [
                 UProductMetaData(),

                 ///  Attributes
                 UProductAttributes(),
                 SizedBox(height: USize.spaceBtwSections),


                 ///  Checkout Button
                 UElevatedButton(child: Text('Checkout'), onPressed: (){}),
                 SizedBox(height: USize.spaceBtwSections),
                 ///  Description
                 USectionHeading(title: 'Description', showActionButton: false,),
                 SizedBox(height: USize.spaceBtwItems),
                 ReadMoreText(
                   'This is iphone product with 515 GB, This is iphone product with 515 GB,This is iphone product with 515 GB,This is iphone product with 515 GB,',
                   trimLines: 2,
                   trimMode: TrimMode.Line,
                   trimCollapsedText: ' Show more',
                   trimExpandedText: ' Less',
                   moreStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),
                   lessStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),
                 ),
                 SizedBox(height: USize.spaceBtwSections)
               ],
             ),
           )
          ],
        ),
      ),

      /// -----[Bottom Navigation]----
      bottomNavigationBar: UBottomAddToCart(),
    );
  }
}


