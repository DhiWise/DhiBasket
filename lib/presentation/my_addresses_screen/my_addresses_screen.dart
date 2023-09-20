import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/widgets/custom_icon_button.dart';

import '../my_addresses_screen/widgets/my_addresses_item_widget.dart';
import 'controller/my_addresses_controller.dart';
import 'models/my_addresses_item_model.dart';

class MyAddressesScreen extends GetWidget<MyAddressesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
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
                                            margin:
                                                getMargin(left: 16, right: 16),
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
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgForward,
                                                              height:
                                                                  getVerticalSize(
                                                                      26.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      13.00)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16, top: 4),
                                                      child: Text(
                                                          "lbl_my_addresses".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratBold22
                                                              .copyWith()))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: double.infinity,
                                            margin: getMargin(top: 24),
                                            decoration:
                                                AppDecoration.fillGreen500,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration: AppDecoration
                                                              .fillWhiteA700
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .customBorderTL30),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 25,
                                                                        right:
                                                                            16),
                                                                    child:
                                                                        GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        Get.toNamed(
                                                                            AppRoutes.addNewAddress);
                                                                      },
                                                                      child: Row(
                                                                          mainAxisAlignment: MainAxisAlignment
                                                                              .start,
                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                              .center,
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            CustomIconButton(
                                                                                height: 21,
                                                                                width: 21,
                                                                                margin: getMargin(left: 1, top: 1, bottom: 1),
                                                                                padding: IconButtonPadding.PaddingAll4,
                                                                                child: CommonImageView(svgPath: ImageConstant.imgPlus21X21)),
                                                                            Padding(
                                                                                padding: getPadding(left: 9, bottom: 2),
                                                                                child: Text("lbl_add_new_address".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold22.copyWith()))
                                                                          ]),
                                                                    )),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 16, top: 25, right: 16, bottom: 361),
                                                                        child: Obx(() => ListView.builder(
                                                                            physics: BouncingScrollPhysics(),
                                                                            shrinkWrap: true,
                                                                            itemCount: controller.myAddressesModelObj.value.myAddressesItemList.length,
                                                                            itemBuilder: (context, index) {
                                                                              MyAddressesItemModel model = controller.myAddressesModelObj.value.myAddressesItemList[index];
                                                                              return MyAddressesItemWidget(model);
                                                                            }))))
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
                                onTapUserIcon();
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

  onTapImgIcon() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapImgClock() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapImgClockOne() {
    Get.toNamed(AppRoutes.wishlistScreen);
  }

  onTapUserIcon() {
    Get.toNamed(AppRoutes.userScreen);
  }
}
