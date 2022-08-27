import 'package:grocery_app/data/models/items/post_items_req.dart';

import 'controller/login_with_email_id_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/core/utils/validation_functions.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grocery_app/domain/firebaseGoogleAuth/firebaseGoogleAuth.dart';
import 'package:grocery_app/domain/firebaseFacebookAuth/firebaseFacebookAuth.dart';

class LoginWithEmailIdScreen extends GetWidget<LoginWithEmailIdController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 16, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgGroup400,
                                                height: getVerticalSize(53.00),
                                                width:
                                                    getHorizontalSize(36.51)),
                                            Container(
                                                margin: getMargin(
                                                    left: 11.630005,
                                                    top: 10.760002,
                                                    bottom: 8.300003),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_sg".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .black901,
                                                              fontSize: getFontSize(
                                                                  28.78927230834961),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      TextSpan(
                                                          text: ' ',
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .lime500,
                                                              fontSize: getFontSize(
                                                                  28.78927230834961),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300)),
                                                      TextSpan(
                                                          text:
                                                              "lbl_grocery".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .green500,
                                                              fontSize: getFontSize(
                                                                  28.78927230834961),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600))
                                                    ]),
                                                    textAlign: TextAlign.left))
                                          ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 40, right: 16),
                                  child: Text("lbl_login2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratSemiBold24
                                          .copyWith())),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 30, right: 16),
                                  child: Text("lbl_email_id".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratMedium18
                                          .copyWith())),
                              CustomTextFormField(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  controller: controller.email,
                                  hintText: "msg_enter_your_emai".tr,
                                  margin:
                                      getMargin(left: 16, top: 13, right: 16),
                                  variant: TextFormFieldVariant.OutlineGray501,
                                  padding: TextFormFieldPadding.PaddingTB20,
                                  fontStyle: TextFormFieldFontStyle
                                      .MontserratRegular16,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 24, right: 16),
                                  child: Text("lbl_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratMedium18
                                          .copyWith())),
                              CustomTextFormField(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  controller: controller.password,
                                  hintText: "msg_enter_your_pass".tr,
                                  margin:
                                      getMargin(left: 16, top: 13, right: 16),
                                  variant: TextFormFieldVariant.OutlineGray501,
                                  padding: TextFormFieldPadding.PaddingTB20,
                                  fontStyle: TextFormFieldFontStyle
                                      .MontserratRegular16,
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomButton(
                                  width: 396,
                                  text: "lbl_login2".tr,
                                  margin:
                                      getMargin(left: 16, top: 24, right: 16),
                                  variant: ButtonVariant.OutlineIndigoA20033,
                                  shape: ButtonShape.RoundedBorder10,
                                  fontStyle:
                                      ButtonFontStyle.MontserratSemiBold18,
                                  onTap: onTapBtnLogin2,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 24, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(122.00),
                                                margin: getMargin(
                                                    top: 12, bottom: 6),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .bluegray400)),
                                            Padding(
                                                padding: getPadding(left: 8),
                                                child: Text(
                                                    "msg_or_continue_wit".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRegular16Bluegray400
                                                        .copyWith())),
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(122.00),
                                                margin: getMargin(
                                                    left: 8,
                                                    top: 12,
                                                    bottom: 6),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .bluegray400))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 25, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  google();
                                                },
                                                child: Container(
                                                    decoration: AppDecoration
                                                        .outlineGreen500
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 39,
                                                                      top: 9,
                                                                      bottom:
                                                                          9),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgGoogle,
                                                                  height:
                                                                      getSize(
                                                                          32.00),
                                                                  width: getSize(
                                                                      32.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 8,
                                                                      top: 14,
                                                                      right: 40,
                                                                      bottom:
                                                                          14),
                                                              child: Text(
                                                                  "lbl_google"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMontserratMedium18Gray701
                                                                      .copyWith()))
                                                        ]))),
                                            GestureDetector(
                                                onTap: () {
                                                  facebook();
                                                },
                                                child: Container(
                                                    decoration: AppDecoration
                                                        .outlineGreen500
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                              padding: getPadding(
                                                                  left:
                                                                      28.619995,
                                                                  top: 9,
                                                                  bottom: 9),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgFacebook,
                                                                  height:
                                                                      getVerticalSize(
                                                                          32.00),
                                                                  width: getHorizontalSize(
                                                                      33.93))),
                                                          Padding(
                                                              padding: getPadding(
                                                                  left:
                                                                      8.480011,
                                                                  top: 14,
                                                                  right: 34.97,
                                                                  bottom: 14),
                                                              child: Text(
                                                                  "lbl_facebook"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMontserratMedium18Gray701
                                                                      .copyWith()))
                                                        ])))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        gotoSignUp();
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 16,
                                              top: 30,
                                              right: 16,
                                              bottom: 20),
                                          child: Center(
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "msg_don_t_you_have2"
                                                              .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .bluegray400,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  TextSpan(
                                                      text: "lbl_register".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray901,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontWeight:
                                                              FontWeight.w700))
                                                ]),
                                                textAlign: TextAlign.center),
                                          ))))
                            ])))))));
  }

  onTapBtnLogin2() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    await _auth
        .signInWithEmailAndPassword(
      email: controller.email.text,
      password: controller.password.text,
    )
        .then((firebaseSignInUser) {
      if (firebaseSignInUser.user != null) {
        onCreateUsersSuccess(
            firebaseSignInUser.user!.uid, firebaseSignInUser.user!.email);
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  google() async {
    await FirebaseGoogleAuthHelper()
        .signInWithGoogle()
        .then((firebaseGoogleUser) {
      if (firebaseGoogleUser.user != null) {
        Get.offNamed(AppRoutes.homeScreen);
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  facebook() async {
    await FirebaseFacebookAuthHelper()
        .signInWithFacebook()
        .then((firebaseFacebookUser) {
      if (firebaseFacebookUser.user != null) {
        Get.offNamed(AppRoutes.homeScreen);
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  gotoSignUp() {
    Get.toNamed(AppRoutes.registerScreen);
  }

  void onCreateUsersSuccess(userId, email) {
    Get.find<PrefUtils>().setUserid(userId);
    Get.find<PrefUtils>().setUsername(email);
    Get.offNamed(AppRoutes.homeScreen);
  }
}
