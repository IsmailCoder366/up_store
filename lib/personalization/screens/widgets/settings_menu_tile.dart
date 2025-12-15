import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingMenuTile extends StatelessWidget {
  const SettingMenuTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Iconsax.safe_home),
      title: Text('My Addressed', style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text('Set shopping delivery addresses', style: Theme.of(context).textTheme.labelMedium),
    );
  }
}