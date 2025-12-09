import 'package:flutter/material.dart';
import 'package:up_store/utils/constants/helpers/device_helpers.dart';

class UElevatedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const UElevatedButton({
    super.key,
    required this.child,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UDeviceHelper.getAppBarHeight(),
      width: UDeviceHelper.getScreenWidth(context),
      child: ElevatedButton(
          onPressed: onPressed, child: child),
    );
        
  }
}