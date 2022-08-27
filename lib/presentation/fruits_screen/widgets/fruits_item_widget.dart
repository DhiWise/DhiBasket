import 'package:grocery_app/data/models/items/post_items_req.dart';
import 'package:grocery_app/routes/navigation_args.dart';

import '../controller/fruits_controller.dart';
import '../models/fruits_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/app_export.dart';

// ignore: must_be_immutable
class FruitsItemWidget extends StatelessWidget {
  FruitsItemWidget(this.fruitsItemModelObj);

  FruitsItemModel fruitsItemModelObj;

  var controller = Get.find<FruitsController>();

  // VoidCallback? onTapGroup;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.gray102,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => {addToWishlist()},
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  156.00,
                ),
                top: getVerticalSize(
                  12.00,
                ),
                right: getHorizontalSize(
                  9.00,
                ),
              ),
              child: Container(
                height: getVerticalSize(
                  26.25,
                ),
                width: getHorizontalSize(
                  25.00,
                ),
                child: SvgPicture.asset(
                  ImageConstant.imgFavorite,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  8.00,
                ),
                right: getHorizontalSize(
                  8.00,
                ),
                bottom: getVerticalSize(
                  15.00,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        33.00,
                      ),
                      right: getHorizontalSize(
                        33.00,
                      ),
                    ),
                    child: Obx(
                      () => CommonImageView(
                        url: fruitsItemModelObj.imageImg.value,
                        height: getVerticalSize(
                          79.00,
                        ),
                        width: getHorizontalSize(
                          107.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          9.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: getHorizontalSize(
                                    10.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Obx(
                                      () => Text(
                                        fruitsItemModelObj.strawberryTxt.value,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratBold14
                                            .copyWith(
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                color: ColorConstant.green500),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          8.00,
                                        ),
                                        top: getVerticalSize(
                                          2.00,
                                        ),
                                        bottom: getVerticalSize(
                                          3.00,
                                        ),
                                      ),
                                      child: Obx(
                                        () => Text(
                                          fruitsItemModelObj.k1kgTxt.value,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratSemiBold14
                                              .copyWith(
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    9.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Obx(
                                      () => Text(
                                        fruitsItemModelObj.priceTxt.value,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratSemiBold18
                                            .copyWith(
                                          fontSize: getFontSize(
                                            18,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          2.00,
                                        ),
                                        bottom: getVerticalSize(
                                          2.00,
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            height: getSize(
                                              18.00,
                                            ),
                                            width: getSize(
                                              18.00,
                                            ),
                                            child: SvgPicture.asset(
                                              ImageConstant.imgVolume,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                7.00,
                                              ),
                                              top: getVerticalSize(
                                                2.00,
                                              ),
                                              bottom: getVerticalSize(
                                                3.00,
                                              ),
                                            ),
                                            child: Text(
                                              "lbl_1".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold18
                                                  .copyWith(
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                7.00,
                                              ),
                                            ),
                                            child: Container(
                                              height: getSize(
                                                18.00,
                                              ),
                                              width: getSize(
                                                18.00,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgPlus,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                14.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.detailsScreen,
                                        arguments: {
                                          NavigationArgs.productId:
                                              fruitsItemModelObj.id,
                                          NavigationArgs.categoryId:
                                              controller.categoryId
                                        });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      28.00,
                                    ),
                                    width: getHorizontalSize(
                                      82.00,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.green500,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          3.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Details",
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratSemiBold12
                                          .copyWith(
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              color: ColorConstant.whiteA700),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => {addToCart()},
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      28.00,
                                    ),
                                    width: getHorizontalSize(
                                      78.00,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          3.00,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.green500,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "lbl_buy_once".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratSemiBold12
                                          .copyWith(
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              color: ColorConstant.green500),
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
              ),
            ),
          ),
        ],
      ),
    );
  }

  addToCart() {
    Get.rawSnackbar(
      messageText: Text(
        'Item added to Cart',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void addToWishlist() {
    PostItemsReq postItemsReq = PostItemsReq();
    controller.callCreateItems(postItemsReq.toJson(),
        successCall: _onCreateItemsSuccess, errCall: _onCreateItemsError);
  }

  void _onCreateItemsSuccess() {
    Get.rawSnackbar(
      messageText: Text(
        'Item added to wishlist',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void _onCreateItemsError() {
    Get.rawSnackbar(
      messageText: Text(
        'Something went wrong',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
