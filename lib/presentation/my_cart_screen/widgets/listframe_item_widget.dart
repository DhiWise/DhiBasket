import '../controller/my_cart_controller.dart';
import '../models/listframe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

// ignore: must_be_immutable
class ListframeItemWidget extends StatelessWidget {
  ListframeItemWidget(this.listframeItemModelObj);

  ListframeItemModel listframeItemModelObj;

  var controller = Get.find<MyCartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        106.00,
      ),
      width: getHorizontalSize(
        396.00,
      ),
      margin: getMargin(
        right: 16,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CommonImageView(
              svgPath: ImageConstant.imgFrameGreen400,
              height: getVerticalSize(
                106.00,
              ),
              width: getHorizontalSize(
                396.00,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 13,
                top: 10,
                right: 13,
                bottom: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CommonImageView(
                    svgPath: ImageConstant.imgMinimize,
                    height: getVerticalSize(
                      85.00,
                    ),
                    width: getHorizontalSize(
                      11.00,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 19,
                      top: 6,
                      bottom: 1,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            right: 10,
                          ),
                          child: Text(
                            "lbl_flat".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratBold14.copyWith(),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 5,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_50_off".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratBold20WhiteA700
                                .copyWith(),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 7,
                            right: 10,
                          ),
                          child: Text(
                            "msg_on_your_first_o".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular12WhiteA700
                                .copyWith(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 1,
                              top: 7,
                            ),
                            child: Text(
                              "msg_use_coupon_code".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular12WhiteA700
                                  .copyWith(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 27,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgMinimize,
                      height: getVerticalSize(
                        85.00,
                      ),
                      width: getHorizontalSize(
                        11.00,
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      85.00,
                    ),
                    width: getHorizontalSize(
                      84.00,
                    ),
                    margin: getMargin(
                      left: 27,
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 3,
                              right: 10,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgMinimize,
                              height: getVerticalSize(
                                85.00,
                              ),
                              width: getHorizontalSize(
                                11.00,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgMinimize,
                              height: getVerticalSize(
                                85.00,
                              ),
                              width: getHorizontalSize(
                                11.00,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: getMargin(
                              top: 24,
                              right: 10,
                              bottom: 24,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 19,
                                      right: 19,
                                    ),
                                    child: Text(
                                      "lbl_code".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRegular14WhiteA700
                                          .copyWith(),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 5,
                                    ),
                                    child: Text(
                                      "lbl_getfirst".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratBold16
                                          .copyWith(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
