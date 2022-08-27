import '../controller/my_cart_controller.dart';
import '../models/listshimlaapple_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

// ignore: must_be_immutable
class ListshimlaappleItemWidget extends StatelessWidget {
  ListshimlaappleItemWidget(this.listshimlaappleItemModelObj);

  ListshimlaappleItemModel listshimlaappleItemModelObj;

  var controller = Get.find<MyCartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        right: 16,
      ),
      decoration: AppDecoration.outlineTeal4001a,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: getSize(
              89.00,
            ),
            width: getSize(
              89.00,
            ),
            margin: getMargin(
              left: 19,
              top: 15,
              bottom: 15,
            ),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: ColorConstant.gray50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10.00,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 26,
                        right: 16,
                        bottom: 25,
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgImage38X57,
                        height: getVerticalSize(
                          38.00,
                        ),
                        width: getHorizontalSize(
                          57.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 18,
              top: 15,
              bottom: 31,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_shimla_apple".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratRegular18Gray800.copyWith(),
                ),
                Padding(
                  padding: getPadding(
                    top: 11,
                    right: 10,
                  ),
                  child: Text(
                    "lbl_1_kg".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRegular14Gray603.copyWith(),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "lbl_2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtHelveticaBold18.copyWith(),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                        ),
                        child: Text(
                          "lbl_3_25".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHelvetica18.copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: getMargin(
              left: 29,
              top: 12,
              right: 20,
              bottom: 12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 10,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgClose,
                    height: getSize(
                      12.00,
                    ),
                    width: getSize(
                      12.00,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: getHorizontalSize(
                      100.00,
                    ),
                    margin: getMargin(
                      top: 53,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CommonImageView(
                          svgPath: ImageConstant.imgVolume,
                          height: getSize(
                            30.00,
                          ),
                          width: getSize(
                            30.00,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_1".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold24.copyWith(),
                          ),
                        ),
                        CommonImageView(
                          svgPath: ImageConstant.imgPlus,
                          height: getSize(
                            30.00,
                          ),
                          width: getSize(
                            30.00,
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
    );
  }
}
