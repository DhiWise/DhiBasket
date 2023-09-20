import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/presentation/home_screen/controller/home_controller.dart';

class AdFooter extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: getVerticalSize(191.00),
        width: getHorizontalSize(396.00),
        margin: EdgeInsets.only(
            left: getHorizontalSize(16.00),
            top: getVerticalSize(21.00),
            right: getHorizontalSize(16.00)),
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: getVerticalSize(191.00),
              width: getHorizontalSize(396.00),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: getHorizontalSize(10.00),
                      top: getVerticalSize(10.00),
                      bottom: getVerticalSize(7.00)),
                  child: Image.asset(
                    ImageConstant.imgImage130X158,
                    height: getVerticalSize(130.00),
                    width: getHorizontalSize(158.00),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(
                      left: getHorizontalSize(24.00),
                      top: getVerticalSize(25.00),
                      right: getHorizontalSize(24.00),
                      bottom: getVerticalSize(25.00)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("msg_get_25_cashbac".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratBold24
                                .copyWith(fontSize: getFontSize(24))),
                        Padding(
                            padding: EdgeInsets.only(
                                top: getVerticalSize(8.00),
                                right: getHorizontalSize(10.00)),
                            child: Text("msg_on_all_baby_pro".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratRegular14
                                    .copyWith(fontSize: getFontSize(14)))),
                        Padding(
                            padding: EdgeInsets.only(
                                top: getVerticalSize(49.00),
                                right: getHorizontalSize(10.00)),
                            child: GestureDetector(
                                onTap: () =>
                                    Get.toNamed(AppRoutes.exploreScreen),
                                child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(33.00),
                                    width: getHorizontalSize(129.00),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.green500,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(5.00))),
                                    child: Text("lbl_shop_now".tr,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtMontserratSemiBold16
                                            .copyWith(
                                                fontSize: getFontSize(16),
                                                color:
                                                    ColorConstant.whiteA700)))))
                      ])))
        ]));
  }
}
