import 'package:flutter/widgets.dart';
import 'package:grocery_app/core/app_export.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: ColorConstant.green500),
        child: Padding(
            padding: getPadding(top: 23, bottom: 36),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                      padding: getPadding(top: 1, bottom: 1),
                      child: CommonImageView(
                          svgPath: ImageConstant.imgCar,
                          height: getSize(21.00),
                          width: getSize(21.00))),
                  GestureDetector(
                      onTap: () {
                        // onTapTxtExploreAll();
                      },
                      child: Padding(
                          padding: getPadding(bottom: 1),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgIcon,
                              height: getVerticalSize(23.00),
                              width: getHorizontalSize(24.00)))),
                  GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.wishlistScreen),
                    child: Padding(
                        padding: getPadding(top: 1, bottom: 1),
                        child: CommonImageView(
                            svgPath: ImageConstant.imgClock20X24,
                            height: getVerticalSize(20.00),
                            width: getHorizontalSize(24.00))),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.userScreen),
                    child: CommonImageView(
                        svgPath: ImageConstant.imgUser,
                        height: getVerticalSize(24.00),
                        width: getHorizontalSize(18.00)),
                  )
                ])));
  }
}
