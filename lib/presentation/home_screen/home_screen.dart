import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/presentation/home_screen/components/ad_footer.dart';
import 'package:grocery_app/presentation/home_screen/components/ad_header.dart';
import 'package:grocery_app/presentation/home_screen/components/top_categories.dart';
import 'package:grocery_app/widgets/custom_bottom_navbar.dart';

import 'components/top_products.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: getVerticalSize(13.00)),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AdHeader(),
                          TopCategories(),
                          TopProducts(),
                          AdFooter(),
                        ]))),
            BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
