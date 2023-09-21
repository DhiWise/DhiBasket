import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/widgets/custom_bottom_navbar.dart';

import '../explore_screen/widgets/fruits_item_widget.dart';
import 'controller/explore_controller.dart';
import 'models/fruits_item_model.dart';

class ExploreScreen extends GetWidget<ExploreController> {
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
                            HeaderPart(),
                            Expanded(
                                child: ListDataView(
                              controller: controller,
                            ))
                          ]))),
              BottomNavBar(),
            ])));
  }

  onTapImgForward() {}

  onTapImgCar() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapImgClock() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapImgClockOne() {
    Get.toNamed(AppRoutes.wishlistScreen);
  }

  onTapUser() {
    Get.toNamed(AppRoutes.userScreen);
  }
}

class ListDataView extends StatelessWidget {
  const ListDataView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ExploreController controller;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
            padding: getPadding(left: 15, top: 27),
            child: Container(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  CatalogWidget(
                    catalogLabel: "Fruits".tr,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(top: 28, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("lbl_vegetables".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratBold20
                                        .copyWith()),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 3),
                                    child: Text("lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratBold16Green500
                                            .copyWith()))
                              ]))),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          height: getVerticalSize(162.00),
                          width: getHorizontalSize(504.00),
                          child: Obx(() => ListView.builder(
                              padding: getPadding(left: 1, top: 18),
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: controller
                                  .exploreModelObj.value.fruitsItemList.length,
                              itemBuilder: (context, index) {
                                FruitsItemModel model = controller
                                    .exploreModelObj
                                    .value
                                    .fruitsItemList[index];
                                return FruitsItemWidget(model);
                              })))),
                ]))));
  }
}

class HeaderPart extends GetWidget<ExploreController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        margin: getMargin(left: 15, right: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              GestureDetector(
                  onTap: () => Get.back(),
                  child: Padding(
                      padding: getPadding(bottom: 1),
                      child: CommonImageView(
                          svgPath: ImageConstant.imgForward26X13,
                          height: getVerticalSize(26.00),
                          width: getHorizontalSize(13.00)))),
              Padding(
                  padding: getPadding(top: 4, left: 16),
                  child: Text("lbl_explore".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratBold22Gray800.copyWith()))
            ]));
  }
}

class CatalogWidget extends GetWidget<ExploreController> {
  final String catalogLabel;
  const CatalogWidget({
    required this.catalogLabel,
  });

  @override
  Widget build(BuildContext context) {
    print(
        '[+] Length: ${controller.exploreModelObj.value.fruitsItemList.length}');
    return Column(
      children: [
        Padding(
            padding: getPadding(left: 1, right: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    catalogLabel,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratBold20,
                  ),
                  Padding(
                      padding: getPadding(top: 2, bottom: 1),
                      child: Text("lbl_see_all".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtMontserratBold16Green500.copyWith()))
                ])),
        Container(
            height: getVerticalSize(162.00),
            width: getHorizontalSize(504.00),
            child: Obx(() => ListView.builder(
                padding: getPadding(left: 1, top: 18),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount:
                    controller.exploreModelObj.value.fruitsItemList.length,
                itemBuilder: (context, index) {
                  FruitsItemModel model =
                      controller.exploreModelObj.value.fruitsItemList[index];
                  return FruitsItemWidget(model);
                }))),
      ],
    );
  }
}
