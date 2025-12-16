import 'package:flutter/material.dart';
import 'package:up_store/common/styles/padding.dart';
import 'package:up_store/common/widgets/app_bar/app_bar.dart';
import 'package:up_store/features/shop/screens/order/widget/order_list.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// AppBar
      appBar: UAppBar(
        showBackArrow: true,
        title: Text('My Order', style: Theme.of(context).textTheme.headlineSmall),
      ),

      body: Padding(padding: UPadding.padding, child: UOrderListItems()),
    );
  }
}
