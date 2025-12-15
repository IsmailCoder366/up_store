import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/common/widgets/icon/circular_icon.dart';
import 'package:up_store/common/widgets/images/circular_image.dart';
import 'package:up_store/common/widgets/images/rounded_image.dart';
import 'package:up_store/common/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:up_store/common/widgets/texts/product_price_text.dart';
import 'package:up_store/common/widgets/texts/product_title_text.dart';
import 'package:up_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:up_store/features/shop/screens/product_details/widgets/product_thumbnail_and_slider.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/images.dart';
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
            UProductMetaData(),

            ///  Attributes
            ///  Checkout Button
            ///  Description
          ],
        ),
      ),

      /// -----[Bottom Navigation]----
    );
  }
}


