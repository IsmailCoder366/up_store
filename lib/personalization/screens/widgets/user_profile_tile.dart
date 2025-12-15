import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class USerProfileTile extends StatelessWidget {
  const USerProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text('unknown pro', style: Theme.of(context).textTheme.headlineSmall),
        subtitle: Text('unkownpro@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
        trailing: IconButton(onPressed: (){}, icon: Icon(Iconsax.edit))
    );
  }
}