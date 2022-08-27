import 'controller/my_orders_controller.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/widgets/custom_button.dart';

class MyOrdersScreen extends GetWidget<MyOrdersController> {
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
                                                          "lbl_my_orders".tr,
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
                                                                        top: 34,
                                                                        right:
                                                                            16),
                                                                    child: Text(
                                                                        "lbl_order_history"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtMontserratSemiBold22Black900
                                                                            .copyWith())),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 16, top: 24, right: 16, bottom: 138),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 6),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgFrameGreen500, height: getVerticalSize(626.00), width: getHorizontalSize(18.00))),
                                                                          Container(
                                                                              margin: getMargin(left: 10, bottom: 45),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Container(
                                                                                    decoration: AppDecoration.outlineBlack9000f.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.max, children: [
                                                                                      Padding(padding: getPadding(left: 17, top: 44, bottom: 50), child: CommonImageView(imagePath: ImageConstant.imgImage48X57, height: getVerticalSize(48.00), width: getHorizontalSize(57.00))),
                                                                                      Container(
                                                                                          height: getVerticalSize(55.00),
                                                                                          width: getHorizontalSize(53.00),
                                                                                          margin: getMargin(left: 16, top: 41, bottom: 46),
                                                                                          child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                            Align(alignment: Alignment.center, child: Padding(padding: getPadding(right: 1, bottom: 1), child: CommonImageView(imagePath: ImageConstant.imgImage54X52, height: getVerticalSize(54.00), width: getHorizontalSize(52.00)))),
                                                                                            CustomButton(width: 53, text: "lbl_13".tr, variant: ButtonVariant.FillGray300d8, shape: ButtonShape.RoundedBorder2, fontStyle: ButtonFontStyle.MontserratSemiBold2661, alignment: Alignment.centerLeft)
                                                                                          ])),
                                                                                      Container(
                                                                                          margin: getMargin(left: 26, top: 37, bottom: 51),
                                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                            Text("msg_arrives_tomorro".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold16.copyWith()),
                                                                                            Padding(padding: getPadding(left: 1, top: 20, right: 10), child: Text("lbl_7_am_pm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular16Black900.copyWith()))
                                                                                          ]))
                                                                                    ])),
                                                                                Container(
                                                                                    width: getHorizontalSize(368.00),
                                                                                    margin: getMargin(top: 16),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                      CustomButton(width: 145, text: "msg_view_order_deta".tr, variant: ButtonVariant.OutlineGreen500, padding: ButtonPadding.PaddingAll10, fontStyle: ButtonFontStyle.MontserratSemiBold16Green500),
                                                                                      CustomButton(width: 120, text: "lbl_track_order".tr, padding: ButtonPadding.PaddingAll10)
                                                                                    ])),
                                                                                Container(
                                                                                    width: getHorizontalSize(368.00),
                                                                                    margin: getMargin(top: 19),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                      Text("lbl_edit_order".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold14Green500.copyWith(decoration: TextDecoration.underline)),
                                                                                      Text("lbl_get_invoice".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold14Green500.copyWith(decoration: TextDecoration.underline))
                                                                                    ])),
                                                                                Container(
                                                                                    margin: getMargin(top: 23),
                                                                                    decoration: AppDecoration.outlineBlack9000f.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                      Padding(padding: getPadding(left: 16, top: 24, bottom: 25), child: CommonImageView(imagePath: ImageConstant.imgImage55X59, height: getVerticalSize(55.00), width: getHorizontalSize(59.00))),
                                                                                      Container(
                                                                                          height: getVerticalSize(55.00),
                                                                                          width: getHorizontalSize(53.00),
                                                                                          margin: getMargin(left: 15, top: 25, bottom: 24),
                                                                                          child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                            Align(alignment: Alignment.center, child: Padding(padding: getPadding(right: 1, bottom: 1), child: CommonImageView(imagePath: ImageConstant.imgImage54X52, height: getVerticalSize(54.00), width: getHorizontalSize(52.00)))),
                                                                                            CustomButton(width: 53, text: "lbl_13".tr, variant: ButtonVariant.FillGray300d8, shape: ButtonShape.RoundedBorder2, fontStyle: ButtonFontStyle.MontserratSemiBold2661, alignment: Alignment.centerLeft)
                                                                                          ])),
                                                                                      Padding(padding: getPadding(left: 27, top: 43, bottom: 44), child: Text("msg_delivered_on_23".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold16.copyWith()))
                                                                                    ])),
                                                                                Container(
                                                                                    width: getHorizontalSize(368.00),
                                                                                    margin: getMargin(top: 16),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                      CustomButton(width: 145, text: "msg_view_order_deta".tr, variant: ButtonVariant.OutlineGreen500, padding: ButtonPadding.PaddingAll10, fontStyle: ButtonFontStyle.MontserratSemiBold16Green500),
                                                                                      Padding(padding: getPadding(top: 13, bottom: 8), child: Text("lbl_get_invoice".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold14Green500.copyWith(decoration: TextDecoration.underline)))
                                                                                    ])),
                                                                                Container(
                                                                                    margin: getMargin(top: 24),
                                                                                    decoration: AppDecoration.outlineBlack9000f.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                      Padding(padding: getPadding(left: 33, top: 14, bottom: 14), child: CommonImageView(imagePath: ImageConstant.imgImage76X29, height: getVerticalSize(76.00), width: getHorizontalSize(29.00))),
                                                                                      Container(
                                                                                          height: getVerticalSize(55.00),
                                                                                          width: getHorizontalSize(53.00),
                                                                                          margin: getMargin(left: 29, top: 25, bottom: 24),
                                                                                          child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                            Align(alignment: Alignment.center, child: Padding(padding: getPadding(right: 1, bottom: 1), child: CommonImageView(imagePath: ImageConstant.imgImage54X52, height: getVerticalSize(54.00), width: getHorizontalSize(52.00)))),
                                                                                            CustomButton(width: 53, text: "lbl_13".tr, variant: ButtonVariant.FillGray300d8, shape: ButtonShape.RoundedBorder2, fontStyle: ButtonFontStyle.MontserratSemiBold2661, alignment: Alignment.centerLeft)
                                                                                          ])),
                                                                                      Padding(padding: getPadding(left: 28, top: 42, bottom: 45), child: Text("msg_delivered_on_15".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold16.copyWith()))
                                                                                    ])),
                                                                                Container(
                                                                                    width: getHorizontalSize(368.00),
                                                                                    margin: getMargin(top: 16),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                      CustomButton(width: 145, text: "msg_view_order_deta".tr, variant: ButtonVariant.OutlineGreen500, padding: ButtonPadding.PaddingAll10, fontStyle: ButtonFontStyle.MontserratSemiBold16Green500),
                                                                                      Padding(padding: getPadding(top: 13, bottom: 8), child: Text("lbl_get_invoice".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold14Green500.copyWith(decoration: TextDecoration.underline)))
                                                                                    ]))
                                                                              ]))
                                                                        ])))
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
                            Padding(
                                padding: getPadding(top: 1, bottom: 1),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgCar,
                                    height: getSize(21.00),
                                    width: getSize(21.00))),
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgIcon,
                                    height: getVerticalSize(23.00),
                                    width: getHorizontalSize(24.00))),
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgClock,
                                    height: getVerticalSize(23.00),
                                    width: getHorizontalSize(21.00))),
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

  onTapImgForward() {
    Get.back();
  }
}
