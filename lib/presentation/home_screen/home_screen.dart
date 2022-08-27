import '../home_screen/widgets/frame10_item_widget.dart';
import 'widgets/category_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/frame10_item_model.dart';
import 'models/category_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/app_export.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(children: [
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(color: ColorConstant.whiteA700),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                                child: SingleChildScrollView(
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(13.00)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          20.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .green500,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10.00))),
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
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        35.00),
                                                                top:
                                                                    getVerticalSize(
                                                                        36.00),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        38.00)),
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
                                                                  Container(
                                                                      width: getHorizontalSize(
                                                                          99.00),
                                                                      child: Text(
                                                                          "msg_everyday_essent"
                                                                              .tr,
                                                                          maxLines:
                                                                              null,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle.txtMontserratBold20.copyWith(
                                                                              fontSize: getFontSize(20),
                                                                              color: ColorConstant.whiteA700))),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          top: getVerticalSize(
                                                                              8.00),
                                                                          right: getHorizontalSize(
                                                                              10.00)),
                                                                      child: Text(
                                                                          "lbl_10_off"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle.txtMontserratBold20.copyWith(
                                                                              fontSize: getFontSize(20),
                                                                              color: ColorConstant.whiteA700)))
                                                                ])),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        35.00),
                                                                top:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        28.00),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        18.00)),
                                                            child: Image.asset(
                                                                ImageConstant
                                                                    .imgImage126X199,
                                                                height:
                                                                    getVerticalSize(
                                                                        126.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        199.00),
                                                                fit: BoxFit
                                                                    .fill))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          24.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(5.00),
                                                      width: getHorizontalSize(
                                                          39.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgSwipe,
                                                          fit: BoxFit.fill)))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          24.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                            "lbl_top_categories"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratBold20
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            20))),
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapTxtExploreAll();
                                                            },
                                                            child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    top: getVerticalSize(
                                                                        2.00),
                                                                    bottom:
                                                                        getVerticalSize(
                                                                            2.00)),
                                                                child: Text(
                                                                    "lbl_explore_all"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratSemiBold22
                                                                        .copyWith(
                                                                            fontSize:
                                                                                getFontSize(16)))))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(145.00),
                                                  width:
                                                      getHorizontalSize(408.00),
                                                  child: Obx(() =>
                                                      ListView.builder(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      16.00),
                                                              top:
                                                                  getVerticalSize(
                                                                      20.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      4.00)),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          physics:
                                                              BouncingScrollPhysics(),
                                                          itemCount: controller
                                                              .homeModelObj
                                                              .value
                                                              .frame9ItemList
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            CategoryItemModel
                                                                model =
                                                                controller
                                                                    .homeModelObj
                                                                    .value
                                                                    .frame9ItemList[index];
                                                            return CategoryItemWidget(
                                                                model);
                                                          })))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          21.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                            "lbl_top_products"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratBold20
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            20))),
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapTxtExploreAll();
                                                            },
                                                            child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    top: getVerticalSize(
                                                                        2.00),
                                                                    bottom:
                                                                        getVerticalSize(
                                                                            2.00)),
                                                                child: Text(
                                                                    "lbl_explore_all"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratSemiBold22
                                                                        .copyWith(
                                                                            fontSize:
                                                                                getFontSize(16)))))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(211.00),
                                                  width:
                                                      getHorizontalSize(412.00),
                                                  child: Obx(() =>
                                                      ListView.builder(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      16.00),
                                                              top:
                                                                  getVerticalSize(
                                                                      19.00)),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          physics:
                                                              BouncingScrollPhysics(),
                                                          itemCount: controller
                                                              .homeModelObj
                                                              .value
                                                              .frame10ItemList
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            Frame10ItemModel
                                                                model =
                                                                controller
                                                                    .homeModelObj
                                                                    .value
                                                                    .frame10ItemList[index];
                                                            return Frame10ItemWidget(
                                                                model);
                                                          })))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(191.00),
                                                  width:
                                                      getHorizontalSize(396.00),
                                                  margin: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          21.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        191.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        396.00),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .centerLeft,
                                                                          child: Container(
                                                                              height: getVerticalSize(191.00),
                                                                              width: getHorizontalSize(396.00),
                                                                              child: SvgPicture.asset(ImageConstant.imgImage130X158, fit: BoxFit.fill))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomRight,
                                                                          child: Padding(
                                                                              padding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(10.00), bottom: getVerticalSize(7.00)),
                                                                              child: Image.asset(ImageConstant.imgImage130X158, height: getVerticalSize(130.00), width: getHorizontalSize(158.00), fit: BoxFit.fill)))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        24.00),
                                                                    top: getVerticalSize(
                                                                        25.00),
                                                                    right: getHorizontalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        25.00)),
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
                                                                      Text(
                                                                          "msg_get_25_cashbac"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtMontserratBold24
                                                                              .copyWith(fontSize: getFontSize(24))),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              top: getVerticalSize(
                                                                                  8.00),
                                                                              right: getHorizontalSize(
                                                                                  10.00)),
                                                                          child: Text(
                                                                              "msg_on_all_baby_pro".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratRegular14.copyWith(fontSize: getFontSize(14)))),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              top: getVerticalSize(49.00),
                                                                              right: getHorizontalSize(10.00)),
                                                                          child: GestureDetector(
                                                                              onTap: () {
                                                                                onTapTxtExploreAll();
                                                                              },
                                                                              child: Container(alignment: Alignment.center, height: getVerticalSize(33.00), width: getHorizontalSize(129.00), decoration: BoxDecoration(color: ColorConstant.green500, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))), child: Text("lbl_shop_now".tr, textAlign: TextAlign.center, style: AppStyle.txtMontserratSemiBold16.copyWith(fontSize: getFontSize(16), color: ColorConstant.whiteA700)))))
                                                                    ])))
                                                      ]))),
                                          Container(
                                              height: getVerticalSize(84.00),
                                              width: size.width,
                                              margin: EdgeInsets.only(
                                                  top: getVerticalSize(62.00)))
                                        ])))
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
                            Padding(
                                padding: getPadding(top: 1, bottom: 1),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgCar,
                                    height: getSize(21.00),
                                    width: getSize(21.00))),
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
                            GestureDetector(
                              onTap: () {
                                onTapWishlist();
                              },
                              child: Padding(
                                  padding: getPadding(top: 1, bottom: 1),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgClock20X24,
                                      height: getVerticalSize(20.00),
                                      width: getHorizontalSize(24.00))),
                            ),
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

  onTapTxtExploreAll() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapBtnCart2() {
    Get.toNamed(AppRoutes.myCartScreen);
  }

  onTapWishlist() {
    Get.toNamed(AppRoutes.wishlistScreen);
  }

  onTapUser() {
    Get.toNamed(AppRoutes.userScreen);
  }
}
