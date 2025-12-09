import 'package:flutter/material.dart';

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
    return ElevatedButton(
        onPressed: onPressed, child: child);

  }
}