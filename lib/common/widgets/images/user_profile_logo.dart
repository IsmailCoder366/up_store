import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/images/circular_image.dart';
import 'package:up_store/utils/constants/images.dart';

class USerProfileLogo extends StatelessWidget {
  const USerProfileLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UCircularImage(
      image: UImages.profileLogo,
      height: 120,
      width: 120,
      borderWidth: 5.0,
      padding: 0,
    );
  }
}