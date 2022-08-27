import 'controller/privacy_policy_controller.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
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
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgForward,
                                                      height: getVerticalSize(
                                                          26.00),
                                                      width: getHorizontalSize(
                                                          13.00)))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 16, top: 3),
                                              child: Text(
                                                  "lbl_privacy_policy".tr,
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
                                        padding: getPadding(top: 24),
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
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 30,
                                                          right: 16),
                                                      child: Text(
                                                          "lbl_privacy_policy"
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
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 15,
                                                              top: 24,
                                                              right: 15),
                                                          child: Text(
                                                              "msg_last_updated_on"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRegular16Gray600
                                                                  .copyWith()))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          // height:
                                                          //     getVerticalSize(
                                                          //         1984.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  396.00),
                                                          margin: getMargin(
                                                              left: 15,
                                                              top: 10,
                                                              right: 15,
                                                              bottom: 20),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child:
                                                                        Container(
                                                                            child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                          Container(
                                                                              margin: getMargin(left: 1, top: 10, right: 10, bottom: 20),
                                                                              child: RichText(
                                                                                  text: TextSpan(children: [
                                                                                    TextSpan(text: "msg_information_col2".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(18), fontFamily: 'Montserrat', fontWeight: FontWeight.w600, decoration: TextDecoration.underline)),
                                                                                    TextSpan(text: "  ".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(18), fontFamily: 'Montserrat', fontWeight: FontWeight.w400))
                                                                                  ]),
                                                                                  textAlign: TextAlign.left)),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Container(width: getHorizontalSize(392.00), margin: getMargin(right: 4), child: Text("msg_sg_grocery_is_c".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular14.copyWith()))),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Container(width: getHorizontalSize(396.00), margin: getMargin(top: 10, right: 1), child: Text("msg_sg_grocery_coll".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular14.copyWith()))),
                                                                          Container(
                                                                              width: getHorizontalSize(305.00),
                                                                              margin: getMargin(left: 1, top: 74, right: 10),
                                                                              child: Text("msg_use_of_your_inf".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold18Black900.copyWith(decoration: TextDecoration.underline))),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Container(width: getHorizontalSize(392.00), margin: getMargin(left: 1, top: 30, right: 4), child: Text("msg_we_will_use_you".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular14.copyWith()))),
                                                                          Container(
                                                                              margin: getMargin(left: 1, top: 33, right: 10),
                                                                              child: RichText(
                                                                                  text: TextSpan(children: [
                                                                                    TextSpan(text: "msg_legal_disclaime2".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(18), fontFamily: 'Montserrat', fontWeight: FontWeight.w600, decoration: TextDecoration.underline)),
                                                                                    TextSpan(text: ' ', style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(18), fontFamily: 'Montserrat', fontWeight: FontWeight.w400))
                                                                                  ]),
                                                                                  textAlign: TextAlign.left)),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Container(width: getHorizontalSize(390.00), margin: getMargin(left: 1, top: 28, right: 5), child: Text("msg_we_reserve_the".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular14.copyWith()))),
                                                                          Container(
                                                                              margin: getMargin(left: 1, top: 26, right: 10),
                                                                              child: RichText(
                                                                                  text: TextSpan(children: [
                                                                                    TextSpan(text: "msg_changes_in_this2".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(18), fontFamily: 'Montserrat', fontWeight: FontWeight.w600, decoration: TextDecoration.underline)),
                                                                                    TextSpan(text: ' ', style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(18), fontFamily: 'Montserrat', fontWeight: FontWeight.w400))
                                                                                  ]),
                                                                                  textAlign: TextAlign.left)),
                                                                          Container(
                                                                              width: getHorizontalSize(396.00),
                                                                              margin: getMargin(top: 18),
                                                                              child: Text("msg_sg_grocery_rese".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular14.copyWith()))
                                                                        ])))
                                                              ])))
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
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapImgIcon() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapImgClock() {
    Get.toNamed(AppRoutes.myCartScreen);
  }

  onTapImgClockOne() {
    Get.toNamed(AppRoutes.wishlistScreen);
  }

  onTapImgUser() {
    Get.toNamed(AppRoutes.userScreen);
  }
}
