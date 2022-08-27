import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Padding(
                          padding: getPadding(left: 51, top: 364, right: 51),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CommonImageView(
                                    svgPath: ImageConstant.imgGroup400,
                                    height: getVerticalSize(78.00),
                                    width: getHorizontalSize(53.00)),
                                Container(
                                    margin: getMargin(
                                        left: 17, top: 25, bottom: 10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_sg".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.black901,
                                                  fontSize: getFontSize(
                                                      42.36911392211914),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: ' ',
                                              style: TextStyle(
                                                  color: ColorConstant.lime500,
                                                  fontSize: getFontSize(
                                                      42.36911392211914),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w300)),
                                          TextSpan(
                                              text: "lbl_grocery".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.green500,
                                                  fontSize: getFontSize(
                                                      42.36911392211914),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600))
                                        ]),
                                        textAlign: TextAlign.left))
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 51, top: 12, right: 51, bottom: 20),
                          child: Text("msg_your_needs_in_j".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular20Green500
                                  .copyWith(letterSpacing: 1.10)))
                    ]))))));
  }
}
