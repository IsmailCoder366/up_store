import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:up_store/common/screens/success_screen.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/common/widgets/button/elevated_button.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/common/widgets/textfields/promo_code.dart';
import 'package:up_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:up_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:up_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:up_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:up_store/navigation_menu.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/images.dart';
import 'package:up_store/utils/constants/sizes.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = UHelperFunction.isDarkMode(context);
    return Scaffold(

      /// App Bar
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme
              .of(context)
              .textTheme
              .headlineSmall,
        ),
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.padding,
          child: Column(
            children: [

              /// items
              UCartItems(showAddRemoveButton: false),
              SizedBox(height: USize.spaceBtwSections),

              /// Promo code text field
              UPromoCodeField(),
              SizedBox(height: USize.spaceBtwSections),

              /// Billing Section
              URoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(USize.md),
                backgroundColor: Colors.transparent,
                child: Column(
                  children: [
                    /// Amount
                    UBillingAmountSection(),
                    SizedBox(height: USize.spaceBtwItems),

                    /// Payment
                    UBillingPaymentSection(),

                    /// Address
                    UBillingAddressSectionScreen(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// Bottom Navigation Bar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USize.defaultSpace),
        child: UElevatedButton(child: Text('CheckOut \&254'), onPressed: (){
          Get.to(() => SuccessScreen(title: 'Payment Success!', subTitle: 'Your item will be shipped soon', onPressed: ()=>Get.offAll(NavigationMenu()), image: UImages.successfulPaymentIcon));
        }),
      ),
    );
  }
}
