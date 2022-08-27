import '../controller/home_controller.dart';
import '../models/frame13_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

// ignore: must_be_immutable
class Frame13ItemWidget extends StatelessWidget {
  Frame13ItemWidget(this.frame13ItemModelObj, {this.onTapTxtGroecries});

  Frame13ItemModel frame13ItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapTxtGroecries;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: getVerticalSize(
            125.00,
          ),
          width: getHorizontalSize(
            87.00,
          ),
          margin: EdgeInsets.only(
            right: getHorizontalSize(
              20.00,
            ),
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: getVerticalSize(
                    88.00,
                  ),
                  width: getHorizontalSize(
                    87.00,
                  ),
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      10.00,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray103,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16.00,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          6.00,
                        ),
                        right: getHorizontalSize(
                          6.00,
                        ),
                      ),
                      child: Obx(
                        () => CommonImageView(
                          url: frame13ItemModelObj.imageImg.value,
                          height: getVerticalSize(
                            65.00,
                          ),
                          width: getHorizontalSize(
                            75.00,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          onTapTxtGroecries!();
                        },
                        child: Container(
                          width: getHorizontalSize(
                            87.00,
                          ),
                          margin: EdgeInsets.only(
                            top: getVerticalSize(
                              22.00,
                            ),
                          ),
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              14.00,
                            ),
                            top: getVerticalSize(
                              11.79,
                            ),
                            right: getHorizontalSize(
                              14.00,
                            ),
                            bottom: getVerticalSize(
                              11.47,
                            ),
                          ),
                          decoration: AppDecoration.txtFillGreen500.copyWith(
                            borderRadius: BorderRadiusStyle.txtCustomBorderBL5,
                          ),
                          child: Obx(
                            () => Text(
                              frame13ItemModelObj.nameTxt.value,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtMontserratSemiBold12WhiteA700
                                  .copyWith(
                                fontSize: getFontSize(
                                  12,
                                ),
                              ),
                            ),
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
    );
  }
}
