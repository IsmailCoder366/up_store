import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/custom_shapes/rounded_container.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';
import 'package:up_store/utils/constants/sizes.dart';

class UPromoCodeField extends StatelessWidget {
  const UPromoCodeField({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final bool dark = UHelperFunction.isDarkMode(context);

    return URoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.only(
        left: USize.sm,
        top: USize.sm,
        right: USize.sm,
        bottom: USize.sm,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo Code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.withValues(alpha: 0.2),
                  foregroundColor: dark ? UColors.white.withValues(alpha: 0.5) : UColors.dark.withValues(alpha: 0.5),
                  side: BorderSide(color: Colors.grey.withValues(alpha: 0.1))
              ),
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}