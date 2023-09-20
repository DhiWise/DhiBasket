import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/core/utils/validation_functions.dart';
import 'package:grocery_app/data/models/items/post_items_req.dart';
import 'package:grocery_app/domain/firebaseFacebookAuth/firebaseFacebookAuth.dart';
import 'package:grocery_app/domain/firebaseGoogleAuth/firebaseGoogleAuth.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/custom_text_form_field.dart';

import 'controller/register_controller.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                    margin: getMargin(left: 15, top: 16, right: 16, bottom: 49),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: SingleChildScrollView(
                                      child: Container(
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 47, right: 47),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup400,
                                                          height:
                                                              getVerticalSize(
                                                                  53.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  36.00)),
                                                      Container(
                                                          margin: getMargin(
                                                              left: 11,
                                                              top: 17,
                                                              bottom: 7),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_sg"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .black901,
                                                                            fontSize: getFontSize(
                                                                                28.78927230834961),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            ' ',
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .lime500,
                                                                            fontSize: getFontSize(
                                                                                28.78927230834961),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w300)),
                                                                    TextSpan(
                                                                        text: "lbl_grocery"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .green500,
                                                                            fontSize: getFontSize(
                                                                                28.78927230834961),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w600))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ]))),
                                        Padding(
                                            padding: getPadding(
                                                left: 1, top: 44, right: 10),
                                            child: Text("lbl_register".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratSemiBold24
                                                    .copyWith())),
                                        Padding(
                                            padding:
                                                getPadding(top: 31, right: 10),
                                            child: Text("lbl_your_name".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium18
                                                    .copyWith())),
                                        CustomTextFormField(
                                            width: 396,
                                            focusNode: FocusNode(),
                                            controller: controller.name,
                                            hintText: "lbl_enter_your_name".tr,
                                            margin: getMargin(left: 1, top: 15),
                                            variant: TextFormFieldVariant
                                                .OutlineGray501,
                                            padding: TextFormFieldPadding
                                                .PaddingTB20,
                                            fontStyle: TextFormFieldFontStyle
                                                .MontserratRegular16,
                                            alignment: Alignment.center,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        Padding(
                                            padding: getPadding(
                                                left: 1, top: 25, right: 10),
                                            child: Text("lbl_email_id".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium18
                                                    .copyWith())),
                                        CustomTextFormField(
                                            width: 396,
                                            focusNode: FocusNode(),
                                            controller: controller.email,
                                            hintText: "msg_enter_your_emai".tr,
                                            margin: getMargin(left: 1, top: 15),
                                            variant: TextFormFieldVariant
                                                .OutlineGray501,
                                            padding: TextFormFieldPadding
                                                .PaddingTB20,
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
                                            padding: getPadding(
                                                left: 1, top: 25, right: 10),
                                            child: Text("lbl_password".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium18
                                                    .copyWith())),
                                        CustomTextFormField(
                                            width: 396,
                                            focusNode: FocusNode(),
                                            controller: controller.password,
                                            hintText: "msg_enter_your_pass".tr,
                                            margin: getMargin(left: 1, top: 15),
                                            variant: TextFormFieldVariant
                                                .OutlineGray501,
                                            padding: TextFormFieldPadding
                                                .PaddingTB20,
                                            fontStyle: TextFormFieldFontStyle
                                                .MontserratRegular16,
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
                                        Padding(
                                            padding: getPadding(
                                                left: 1, top: 25, right: 10),
                                            child: Text(
                                                "msg_confirm_passwor".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium18
                                                    .copyWith())),
                                        CustomTextFormField(
                                            width: 396,
                                            focusNode: FocusNode(),
                                            controller: controller.cpassword,
                                            hintText: "msg_confirm_your_pa".tr,
                                            margin: getMargin(left: 1, top: 15),
                                            variant: TextFormFieldVariant
                                                .OutlineGray501,
                                            padding: TextFormFieldPadding
                                                .PaddingTB20,
                                            fontStyle: TextFormFieldFontStyle
                                                .MontserratRegular16,
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
                                        Padding(
                                            padding: getPadding(
                                                left: 1, top: 25, right: 10),
                                            child: Text("lbl_contact_number".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium18
                                                    .copyWith())),
                                        CustomTextFormField(
                                            width: 396,
                                            focusNode: FocusNode(),
                                            controller: controller.contact,
                                            hintText: "msg_enter_your_cont".tr,
                                            margin: getMargin(left: 1, top: 15),
                                            variant: TextFormFieldVariant
                                                .OutlineGray501,
                                            padding: TextFormFieldPadding
                                                .PaddingTB20,
                                            fontStyle: TextFormFieldFontStyle
                                                .MontserratRegular16,
                                            textInputAction:
                                                TextInputAction.done,
                                            alignment: Alignment.center,
                                            validator: (value) {
                                              if (!isNumeric(value)) {
                                                return "Please enter valid number";
                                              }
                                              return null;
                                            }),
                                        CustomButton(
                                            width: 396,
                                            text: "lbl_register".tr,
                                            margin: getMargin(left: 1, top: 24),
                                            variant: ButtonVariant
                                                .OutlineIndigoA20033,
                                            shape: ButtonShape.RoundedBorder10,
                                            fontStyle: ButtonFontStyle
                                                .MontserratSemiBold18,
                                            onTap: onTapBtnRegister,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 1, top: 26),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  122.00),
                                                          margin: getMargin(
                                                              top: 9,
                                                              bottom: 5),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .bluegray400)),
                                                      Text(
                                                          "msg_or_continue_wit"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRegular16Bluegray400
                                                              .copyWith()),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  122.00),
                                                          margin: getMargin(
                                                              top: 9,
                                                              bottom: 5),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .bluegray400))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 1, top: 25),
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
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                41,
                                                                            top:
                                                                                11,
                                                                            bottom:
                                                                                11),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgGoogle,
                                                                            height: getSize(26.00),
                                                                            width: getSize(26.00))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                10,
                                                                            top:
                                                                                17,
                                                                            right:
                                                                                38,
                                                                            bottom:
                                                                                14),
                                                                        child: Text(
                                                                            "lbl_google"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium18Gray701.copyWith()))
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
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                28,
                                                                            top:
                                                                                9,
                                                                            bottom:
                                                                                9),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgFacebook,
                                                                            height: getVerticalSize(32.00),
                                                                            width: getHorizontalSize(33.00))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                15,
                                                                            right:
                                                                                33,
                                                                            bottom:
                                                                                16),
                                                                        child: Text(
                                                                            "lbl_facebook"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium18Gray701.copyWith()))
                                                                  ])))
                                                    ]))),
                                        GestureDetector(
                                          onTap: () => {gotoLogin()},
                                          child: Container(
                                              margin: getMargin(
                                                  left: 26, top: 33, right: 26),
                                              child: Center(
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "msg_already_have_an2"
                                                                  .tr,
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .bluegray400,
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      TextSpan(
                                                          text: "lbl_login2".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray901,
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700))
                                                    ]),
                                                    textAlign:
                                                        TextAlign.center),
                                              )),
                                        )
                                      ])))))
                        ])))));
  }

  onTapBtnRegister() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    await _auth
        .createUserWithEmailAndPassword(
      email: controller.email.text,
      password: controller.password.text,
    )
        .then((firebaseSignUpUser) {
      if (firebaseSignUpUser.user != null) {
        PostItemsReq postItemsReq = PostItemsReq(
            fields: Fields(
                bArchived: false,
                bDraft: false,
                name: controller.name.text,
                email: firebaseSignUpUser.user!.email.toString(),
                userid: firebaseSignUpUser.user!.uid.toString(),
                contact: controller.contact.text));
        controller.callCreateUsers(postItemsReq.toJson(),
            successCall: _onCreateUsersSuccess);
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

  void _onCreateUsersSuccess() {
    Get.find<PrefUtils>().setUserid(controller.postItemsResp.userid);
    Get.offNamed(AppRoutes.homeScreen);
  }

  gotoLogin() {
    Get.offNamed(AppRoutes.loginWithEmailIdScreen);
  }
}
