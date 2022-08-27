import '../my_cart_screen/widgets/listframe_item_widget.dart';
import '../my_cart_screen/widgets/listshimlaapple_item_widget.dart';
import 'controller/my_cart_controller.dart';
import 'models/listframe_item_model.dart';
import 'models/listshimlaapple_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/widgets/custom_button.dart';

class MyCartScreen extends GetWidget<MyCartController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(children: [
              Expanded(
                  child: Container(
                      margin: getMargin(top: 18),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                width: size.width,
                                margin: getMargin(left: 16, right: 16),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            onTapImgForward();
                                          },
                                          child: Padding(
                                              padding: getPadding(bottom: 1),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgForward26X13,
                                                  height:
                                                      getVerticalSize(26.00),
                                                  width: getHorizontalSize(
                                                      13.00)))),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text("lbl_my_cart".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratBold22Gray800
                                                  .copyWith()))
                                    ])),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: SingleChildScrollView(
                                        padding: getPadding(
                                            left: 16, top: 30, right: 16),
                                        child: Container(
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                              Padding(
                                                  padding:
                                                      getPadding(right: 10),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                            "msg_tomorrow_7_am"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratSemiBold20
                                                                .copyWith()),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8,
                                                                top: 5,
                                                                bottom: 9),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgIconGray800,
                                                                height:
                                                                    getVerticalSize(
                                                                        5.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        11.00)))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 23),
                                                  child: Obx(() =>
                                                      ListView.builder(
                                                          physics:
                                                              NeverScrollableScrollPhysics(),
                                                          shrinkWrap: true,
                                                          itemCount: controller
                                                              .myCartModelObj
                                                              .value
                                                              .listshimlaappleItemList
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            ListshimlaappleItemModel
                                                                model =
                                                                controller
                                                                    .myCartModelObj
                                                                    .value
                                                                    .listshimlaappleItemList[index];
                                                            return ListshimlaappleItemWidget(
                                                                model);
                                                          }))),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 27, right: 10),
                                                  child: Text(
                                                      "lbl_payment_details".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratBold22Gray800
                                                          .copyWith())),
                                              Container(
                                                  width: double.infinity,
                                                  margin: getMargin(top: 22),
                                                  decoration: AppDecoration
                                                      .outlineBlack9000c
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            19,
                                                                        top: 10,
                                                                        right:
                                                                            19),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  2,
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_total_mrp".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratRegular16.copyWith())),
                                                                      Text(
                                                                          "lbl_9_97"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtMontserratRegular16
                                                                              .copyWith())
                                                                    ]))),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    354.00),
                                                            margin: getMargin(
                                                                left: 19,
                                                                top: 11,
                                                                right: 19),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .gray103)),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            19,
                                                                        top: 7,
                                                                        right:
                                                                            19),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  4),
                                                                          child: Text(
                                                                              "lbl_discount".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratRegular16.copyWith())),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_0_00".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratRegular16.copyWith()))
                                                                    ]))),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    356.00),
                                                            margin: getMargin(
                                                                left: 19,
                                                                top: 11,
                                                                right: 19),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .gray103)),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            19,
                                                                        top: 11,
                                                                        right:
                                                                            19),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1),
                                                                          child: Text(
                                                                              "msg_shipping_charge".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratRegular16.copyWith())),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_free".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratRegular16.copyWith()))
                                                                    ]))),
                                                        Container(
                                                            margin: getMargin(
                                                                top: 9),
                                                            decoration: AppDecoration
                                                                .fillGreen50
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .customBorderBL10),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              20,
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              11),
                                                                      child: Text(
                                                                          "lbl_total"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtMontserratSemiBold18Gray801
                                                                              .copyWith())),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              12,
                                                                          right:
                                                                              25,
                                                                          bottom:
                                                                              6),
                                                                      child: Text(
                                                                          "lbl_9_972"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtMontserratSemiBold18Gray801
                                                                              .copyWith()))
                                                                ]))
                                                      ])),
                                              CustomButton(
                                                  width: 200,
                                                  text: "lbl_checkout".tr,
                                                  margin: getMargin(
                                                      left: 73,
                                                      top: 30,
                                                      right: 73,
                                                      bottom: 30),
                                                  alignment: Alignment.center)
                                            ])))))
                          ]))),
              Container(
                  decoration: BoxDecoration(color: ColorConstant.green500),
                  child: Padding(
                      padding: getPadding(top: 23, bottom: 36),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  onTapImgCar();
                                },
                                child: Padding(
                                    padding: getPadding(top: 1, bottom: 1),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgCar,
                                        height: getSize(21.00),
                                        width: getSize(21.00)))),
                            GestureDetector(
                                onTap: () {
                                  onTapImgIconOne();
                                },
                                child: Padding(
                                    padding: getPadding(bottom: 1),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgIcon,
                                        height: getVerticalSize(23.00),
                                        width: getHorizontalSize(24.00)))),
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgClock,
                                    height: getVerticalSize(23.00),
                                    width: getHorizontalSize(21.00))),
                            GestureDetector(
                                onTap: () {
                                  onTapImgClockOne();
                                },
                                child: Padding(
                                    padding: getPadding(top: 1, bottom: 1),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgClock20X24,
                                        height: getVerticalSize(20.00),
                                        width: getHorizontalSize(24.00)))),
                            GestureDetector(
                              onTap: () {
                                onTapUser();
                              },
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgUser,
                                  height: getVerticalSize(24.00),
                                  width: getHorizontalSize(18.00)),
                            )
                          ])))
            ])));
  }

  onTapImgForward() {
    Get.back();
  }

  onTapImgCar() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapImgIconOne() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapImgClockOne() {
    Get.toNamed(AppRoutes.wishlistScreen);
  }

  onTapUser() {
    Get.toNamed(AppRoutes.userScreen);
  }
}
