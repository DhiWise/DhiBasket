import 'controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserScreen extends GetWidget<UserController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              margin: getMargin(top: 20),
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
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              GestureDetector(
                                                onTap: (() {
                                                  Get.back();
                                                }),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgForward26X13,
                                                    height:
                                                        getVerticalSize(26.00),
                                                    width: getHorizontalSize(
                                                        13.00)),
                                              ),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 4,
                                                      bottom: 2,
                                                      left: 16),
                                                  child: Text("lbl_profile".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratBold22
                                                          .copyWith(
                                                              color: ColorConstant
                                                                  .black900)))
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: double.infinity,
                                            margin: getMargin(
                                                left: 16, top: 17, right: 16),
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 135,
                                                              right: 135),
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          39.50)),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage79X79,
                                                                  height:
                                                                      getSize(
                                                                          79.00),
                                                                  width: getSize(
                                                                      79.00))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 135,
                                                              top: 28,
                                                              right: 135),
                                                          child: Obx(
                                                            () => Text(
                                                                controller
                                                                    .userModelObj
                                                                    .value
                                                                    .name
                                                                    .value,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRegular20
                                                                    .copyWith()),
                                                          ))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 135,
                                                              top: 10,
                                                              right: 135),
                                                          child: Obx(
                                                            () => Text(
                                                                controller
                                                                    .userModelObj
                                                                    .value
                                                                    .username
                                                                    .value,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRegular14
                                                                    .copyWith()),
                                                          ))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          width:
                                                              double.infinity,
                                                          margin: getMargin(
                                                              top: 23),
                                                          decoration: AppDecoration
                                                              .fillGray101
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder22),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      goToOrders();
                                                                    },
                                                                    child: Padding(
                                                                        padding: getPadding(left: 28, top: 23, right: 28),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                          Padding(
                                                                              padding: getPadding(bottom: 2),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgFile, height: getVerticalSize(15.00), width: getHorizontalSize(13.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 25, top: 1),
                                                                              child: Text("lbl_my_orders2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular18Gray603.copyWith()))
                                                                        ]))),
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      gotoAddresses();
                                                                    },
                                                                    child: Padding(
                                                                        padding: getPadding(left: 28, top: 34, right: 28),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                          Padding(
                                                                              padding: getPadding(bottom: 2),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgLocation17X15, height: getVerticalSize(17.00), width: getHorizontalSize(15.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 25, top: 1),
                                                                              child: Text("lbl_my_addresses".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular18Gray603.copyWith()))
                                                                        ]))),
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      gotoContactUs();
                                                                    },
                                                                    child: Padding(
                                                                        padding: getPadding(left: 28, top: 36, right: 28),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                          Padding(
                                                                              padding: getPadding(bottom: 2),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgMusic, height: getVerticalSize(15.00), width: getHorizontalSize(18.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 22, top: 1),
                                                                              child: Text("lbl_contact_us".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular18Gray603.copyWith()))
                                                                        ]))),
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      gotoAbout();
                                                                    },
                                                                    child: Padding(
                                                                        padding: getPadding(left: 28, top: 35, right: 28),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 1, bottom: 1),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgInfo, height: getVerticalSize(15.00), width: getHorizontalSize(18.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 19),
                                                                              child: Text("lbl_about".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular18Gray603.copyWith()))
                                                                        ]))),
                                                                GestureDetector(
                                                                  onTap: () {
                                                                    logout();
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  28,
                                                                              top:
                                                                                  37,
                                                                              right:
                                                                                  28,
                                                                              bottom:
                                                                                  188),
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Padding(padding: getPadding(bottom: 4), child: CommonImageView(svgPath: ImageConstant.imgFolder, height: getVerticalSize(13.00), width: getHorizontalSize(18.00))),
                                                                                Padding(padding: getPadding(left: 22, top: 1), child: Text("lbl_log_out".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular18Gray603.copyWith()))
                                                                              ])),
                                                                )
                                                              ])))
                                                ])))
                                  ]))))),
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
                                gotoHomeScreen();
                              },
                              child: Padding(
                                  padding: getPadding(top: 1, bottom: 1),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgCar,
                                      height: getSize(21.00),
                                      width: getSize(21.00))),
                            ),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtExploreAll();
                                },
                                child: Padding(
                                    padding: getPadding(bottom: 1),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgIcon,
                                        height: getVerticalSize(23.00),
                                        width: getHorizontalSize(24.00)))),
                            GestureDetector(
                                onTap: () {
                                  onTapBtnCart2();
                                },
                                child: Padding(
                                    padding: getPadding(bottom: 1),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgClock,
                                        height: getVerticalSize(23.00),
                                        width: getHorizontalSize(21.00)))),
                            Padding(
                                padding: getPadding(top: 1, bottom: 1),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgClock20X24,
                                    height: getVerticalSize(20.00),
                                    width: getHorizontalSize(24.00))),
                            CommonImageView(
                                svgPath: ImageConstant.imgUser,
                                height: getVerticalSize(24.00),
                                width: getHorizontalSize(18.00))
                          ])))
            ])));
  }

  goToOrders() {
    Get.toNamed(AppRoutes.myOrdersScreen);
  }

  gotoAddresses() {
    Get.toNamed(AppRoutes.myAddressesScreen);
  }

  gotoContactUs() {
    Get.toNamed(AppRoutes.contactUsScreen);
  }

  gotoAbout() {
    Get.toNamed(AppRoutes.aboutUsScreen);
  }

  logout() {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    _auth.signOut();
    Get.find<PrefUtils>().clearPreferencesData();
    Get.offAllNamed(AppRoutes.loginWithEmailIdScreen);
  }

  onTapTxtExploreAll() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapBtnCart2() {
    Get.toNamed(AppRoutes.myCartScreen);
  }

  onTapBtnProfile2() {
    Get.toNamed(AppRoutes.userScreen);
  }

  gotoHomeScreen() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
