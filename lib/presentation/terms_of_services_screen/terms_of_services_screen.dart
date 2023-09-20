import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

import 'controller/terms_of_services_controller.dart';

class TermsOfServicesScreen extends GetWidget<TermsOfServicesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            body: Column(children: [
              Expanded(
                  child: Container(
                      margin: getMargin(top: 20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: size.width,
                                    margin: getMargin(left: 16, right: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapImgForward();
                                              },
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgForward,
                                                  height:
                                                      getVerticalSize(26.00),
                                                  width: getHorizontalSize(
                                                      13.00))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 1, bottom: 2),
                                              child: Text(
                                                  "msg_terms_of_servic".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratBold22
                                                      .copyWith()))
                                        ]))),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: SingleChildScrollView(
                                        padding: getPadding(top: 25),
                                        child: Container(
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL30),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 30,
                                                          right: 16),
                                                      child: Text(
                                                          "msg_terms_and_condi"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold22Black900
                                                              .copyWith(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  392.00),
                                                          margin: getMargin(
                                                              left: 15,
                                                              top: 36,
                                                              right: 15),
                                                          child: Text(
                                                              "msg_welcome_to_all"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratSemiBold16
                                                                  .copyWith(
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  396.00),
                                                          margin: getMargin(
                                                              left: 15,
                                                              top: 46,
                                                              right: 15),
                                                          child: Text(
                                                              "msg_by_placing_an_o"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRegular14
                                                                  .copyWith()))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 33,
                                                          right: 16),
                                                      child: Text(
                                                          "msg_our_delivery_se"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold18Black900
                                                              .copyWith(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  392.00),
                                                          margin: getMargin(
                                                              left: 15,
                                                              top: 33,
                                                              right: 15),
                                                          child: Text(
                                                              "msg_when_you_place"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRegular14
                                                                  .copyWith()))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 29,
                                                          right: 16),
                                                      child: Text(
                                                          "msg_price_and_avail"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold18Black900
                                                              .copyWith(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  392.00),
                                                          margin: getMargin(
                                                              left: 15,
                                                              top: 30,
                                                              right: 15),
                                                          child: Text(
                                                              "msg_from_time_to_ti"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRegular14
                                                                  .copyWith()))),
                                                  Container(
                                                      margin: getMargin(
                                                          left: 18,
                                                          top: 54,
                                                          right: 18),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_payment2"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                18),
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        decoration:
                                                                            TextDecoration.underline)),
                                                                TextSpan(
                                                                    text:
                                                                        "\r".tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                22),
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        decoration:
                                                                            TextDecoration.underline))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left)),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  396.00),
                                                          margin: getMargin(
                                                              left: 15,
                                                              top: 36,
                                                              right: 15,
                                                              bottom: 20),
                                                          child: Text(
                                                              "msg_we_accept_only"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRegular14
                                                                  .copyWith())))
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
                                  onTapImgIcon();
                                },
                                child: Padding(
                                    padding: getPadding(bottom: 1),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgIcon,
                                        height: getVerticalSize(23.00),
                                        width: getHorizontalSize(24.00)))),
                            GestureDetector(
                                onTap: () {
                                  onTapImgClock();
                                },
                                child: Padding(
                                    padding: getPadding(bottom: 1),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgClock,
                                        height: getVerticalSize(23.00),
                                        width: getHorizontalSize(21.00)))),
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
                                  onTapImgUser();
                                },
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgUser,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(18.00)))
                          ])))
            ])));
  }

  onTapImgForward() {
    Get.back();
  }

  onTapImgCar() {
// TODO: implement Actions
  }
  onTapImgIcon() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapImgClock() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapImgClockOne() {
    Get.toNamed(AppRoutes.wishlistScreen);
  }

  onTapImgUser() {
    Get.toNamed(AppRoutes.userScreen);
  }
}
