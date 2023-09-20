import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/app_export.dart';

import '../wishlist_screen/widgets/wishlist_item_widget.dart';
import 'controller/wishlist_controller.dart';
import 'models/wishlist_item_model.dart';

class WishlistScreen extends GetWidget<WishlistController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            body: Column(children: [
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(color: ColorConstant.green500),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                width: size.width,
                                margin: EdgeInsets.only(
                                    top: getVerticalSize(20.00)),
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(16.00),
                                        right: getHorizontalSize(16.00)),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapImgPath872();
                                                    },
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            bottom:
                                                                getVerticalSize(
                                                                    1.00)),
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    26.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    13.00),
                                                            child: SvgPicture.asset(
                                                                ImageConstant
                                                                    .imageNotFound,
                                                                fit: BoxFit
                                                                    .fill)))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            16.00)),
                                                    child: Text("Wishlist",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratSemiBold22
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        22))))
                                              ]),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(1.00),
                                                  bottom:
                                                      getVerticalSize(2.33)),
                                              child: Container(
                                                  height:
                                                      getVerticalSize(23.67),
                                                  width:
                                                      getHorizontalSize(26.00),
                                                  child: SvgPicture.asset(
                                                      ImageConstant
                                                          .imageNotFound,
                                                      fit: BoxFit.fill)))
                                        ]))),
                            Expanded(
                                child: SingleChildScrollView(
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(24.00)),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    getHorizontalSize(30.00)),
                                                topRight: Radius.circular(
                                                    getHorizontalSize(30.00)),
                                                bottomLeft: Radius.circular(
                                                    getHorizontalSize(0.00)),
                                                bottomRight: Radius.circular(
                                                    getHorizontalSize(0.00)))),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          16.00),
                                                      top: getVerticalSize(
                                                          24.00),
                                                      right: getHorizontalSize(
                                                          16.00)),
                                                  child: Obx(() =>
                                                      GridView.builder(
                                                          shrinkWrap: true,
                                                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                              mainAxisExtent:
                                                                  getVerticalSize(
                                                                      245.00),
                                                              crossAxisCount: 2,
                                                              mainAxisSpacing:
                                                                  getHorizontalSize(
                                                                      16.00),
                                                              crossAxisSpacing:
                                                                  getHorizontalSize(
                                                                      16.00)),
                                                          physics:
                                                              NeverScrollableScrollPhysics(),
                                                          itemCount: controller
                                                              .wishlistModelObj
                                                              .value
                                                              .wishlistItemList
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            WishlistItemModel
                                                                model =
                                                                controller
                                                                    .wishlistModelObj
                                                                    .value
                                                                    .wishlistItemList[index];
                                                            return FruitsItemWidget(
                                                                model);
                                                          }))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          84.00),
                                                      width: size.width,
                                                      margin: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              29.00))))
                                            ]))))
                          ]))),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorConstant.green500,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.homeScreen);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              22.73,
                            ),
                            bottom: getVerticalSize(
                              35.58,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              25.69,
                            ),
                            width: getHorizontalSize(
                              26.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imageNotFound,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapTxtExploreAll();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              22.73,
                            ),
                            bottom: getVerticalSize(
                              35.58,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              25.69,
                            ),
                            width: getHorizontalSize(
                              26.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imageNotFound,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapBtnCart2();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              22.73,
                            ),
                            bottom: getVerticalSize(
                              35.58,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              25.69,
                            ),
                            width: getHorizontalSize(
                              26.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imageNotFound,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapBtnCart2();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              22.73,
                            ),
                            bottom: getVerticalSize(
                              35.58,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              25.69,
                            ),
                            width: getHorizontalSize(
                              26.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imageNotFound,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapBtnProfile2();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              22.73,
                            ),
                            bottom: getVerticalSize(
                              35.58,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              25.69,
                            ),
                            width: getHorizontalSize(
                              23.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imageNotFound,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ])));
  }

  onTapImgPath872() {
    Get.back();
  }

  onTapTxtExploreAll() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapBtnCart2() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapBtnWishlist2() {
    Get.toNamed(AppRoutes.wishlistScreen);
  }

  onTapBtnProfile2() {
    Get.toNamed(AppRoutes.userScreen);
  }
}
