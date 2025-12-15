import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:up_store/personalization/screens/edit_profile/edit_profile.dart';

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
        trailing: IconButton(onPressed: (){
          Get.to(EditProfileScreen());
        }, icon: Icon(Iconsax.edit))
    );
  }
}