import 'package:flutter/material.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/custom_shapes/circular_container.dart';
import 'package:up_store/features/shop/screens/home/home.dart';
import 'package:up_store/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/device_helpers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UPrimaryHeaderContainer(
        child: Container(),
      ),
    );
  }
}




