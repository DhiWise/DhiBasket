import '../controller/my_addresses_controller.dart';
import '../models/my_addresses_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

// ignore: must_be_immutable
class MyAddressesItemWidget extends StatelessWidget {
  MyAddressesItemWidget(this.myAddressesItemModelObj);

  MyAddressesItemModel myAddressesItemModelObj;

  var controller = Get.find<MyAddressesController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: getSize(
            18.00,
          ),
          width: getSize(
            18.00,
          ),
          margin: getMargin(
            top: 50,
            bottom: 106,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                9.00,
              ),
            ),
            border: Border.all(
              color: ColorConstant.gray602,
              width: getHorizontalSize(
                1.00,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            // width: MediaQuery.of(context).size.width - 70,
            margin: getMargin(left: 16, bottom: 20),
            decoration: AppDecoration.outlineBlack9000f.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    bottom: 65,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 2,
                            top: 1,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                  bottom: 2,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgHome,
                                  height: getVerticalSize(
                                    15.00,
                                  ),
                                  width: getHorizontalSize(
                                    14.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 10,
                                ),
                                child: Obx(
                                  () => Text(
                                    myAddressesItemModelObj.homeTxt.value,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratSemiBold18Black900
                                        .copyWith(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: getHorizontalSize(
                            200.00,
                          ),
                          margin: getMargin(
                            left: 10,
                            top: 25,
                          ),
                          child: Obx(
                            () => Text(
                              myAddressesItemModelObj.k4517WashingtonTxt.value,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular14.copyWith(),
                            ),
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
    );
  }
}
