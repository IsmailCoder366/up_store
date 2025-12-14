import 'package:flutter/material.dart';

import 'package:up_store/common/widgets/app_bar/tab_bar.dart';

import 'package:up_store/common/widgets/brands/brands_card.dart';

import 'package:up_store/common/widgets/texts/section_heading.dart';

import 'package:up_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:up_store/features/shop/screens/store/widgets/store_primary_header.dart';

import 'package:up_store/utils/constants/helpers/helper_function.dart';

import 'package:up_store/utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 330,
                pinned: true,
                floating: false,
                flexibleSpace: SingleChildScrollView(
                  child: Column(
                    children: [
                      /// primary Header
                      UStorePrimaryHeader(),
                     SizedBox(height: USize.spaceBtwItems),
                  
                     /// Brands heading and brand card
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: USize.defaultSpace),
                        child: Column(
                          children: [
                            /// Brands Heading
                            USectionHeading(title: 'Brands', onPressed: (){}),
                  
                            /// Brand Card
                            SizedBox(
                              height: USize.brandCardHeight,
                              child: ListView.separated(
                                separatorBuilder: (context, index) => SizedBox(width: USize.spaceBtwItems),
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                shrinkWrap: true,
                                itemBuilder: (context, index) =>  UBrandCard(),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                bottom: UTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ]
                ),
              ),
            ];
          },
          body: TabBarView(children: [
            UCatogeryTab(),
            UCatogeryTab(),
            UCatogeryTab(),
            UCatogeryTab(),
            UCatogeryTab(),
          ]),
        ),
      ),
    );
  }
}
