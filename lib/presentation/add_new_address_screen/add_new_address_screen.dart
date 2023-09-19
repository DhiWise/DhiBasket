import 'package:flutter/material.dart';
import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/core/utils/validation_functions.dart';
import 'package:grocery_app/data/models/items/post_items_req.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/custom_checkbox.dart';
import 'package:grocery_app/widgets/custom_text_form_field.dart';

import 'controller/add_new_address_controller.dart';

// ignore_for_file: must_be_immutable
class AddNewAddressScreen extends GetWidget<AddNewAddressController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.green500,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 20),
                                  child: Padding(
                                      padding: getPadding(left: 16, right: 177),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  onTapImgIcon();
                                                },
                                                child: Padding(
                                                    padding:
                                                        getPadding(bottom: 1),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgForward,
                                                        height: getVerticalSize(
                                                            26.00),
                                                        width:
                                                            getHorizontalSize(
                                                                13.00)))),
                                            Padding(
                                                padding: getPadding(left: 16),
                                                child: Text(
                                                    "lbl_add_new_address".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratBold22
                                                        .copyWith()))
                                          ]))),
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(top: 24),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL30),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomTextFormField(
                                            width: 332,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.countryController,
                                            hintText: "lbl_country".tr,
                                            margin: getMargin(
                                                left: 48, top: 48, right: 48),
                                            alignment: Alignment.center,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        CustomTextFormField(
                                            width: 332,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.stateController,
                                            hintText: "lbl_state".tr,
                                            margin: getMargin(
                                                left: 48, top: 16, right: 48),
                                            alignment: Alignment.center,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        CustomTextFormField(
                                            width: 332,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.cityController,
                                            hintText: "lbl_city".tr,
                                            margin: getMargin(
                                                left: 48, top: 16, right: 48),
                                            alignment: Alignment.center,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        CustomTextFormField(
                                            width: 332,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.pincodeController,
                                            hintText: "lbl_pincode".tr,
                                            margin: getMargin(
                                                left: 48, top: 16, right: 48),
                                            alignment: Alignment.center,
                                            validator: (value) {
                                              if (!isNumeric(value)) {
                                                return "Please enter valid number";
                                              }
                                              return null;
                                            }),
                                        CustomTextFormField(
                                            width: 332,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.areaController,
                                            hintText: "lbl_area".tr,
                                            margin: getMargin(
                                                left: 48, top: 16, right: 48),
                                            alignment: Alignment.center,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        CustomTextFormField(
                                            width: 332,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.landmarkController,
                                            hintText: "lbl_landmark".tr,
                                            margin: getMargin(
                                                left: 48, top: 16, right: 48),
                                            textInputAction:
                                                TextInputAction.done,
                                            alignment: Alignment.center,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        Padding(
                                            padding: getPadding(
                                                left: 48.49,
                                                top: 16,
                                                right: 48.49),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Obx(() => CustomCheckbox(
                                                      text: "lbl_home".tr,
                                                      iconSize: 17.54,
                                                      value: controller
                                                          .checkbox.value,
                                                      onChange: (value) {
                                                        controller.checkbox
                                                            .value = value;
                                                      })),
                                                  Obx(() => CustomCheckbox(
                                                      text:
                                                          "lbl_work_office".tr,
                                                      iconSize: 17.54,
                                                      value: controller
                                                          .checkbox1.value,
                                                      padding: getPadding(
                                                          left: 22.479996),
                                                      onChange: (value) {
                                                        controller.checkbox1
                                                            .value = value;
                                                      })),
                                                  Obx(() => CustomCheckbox(
                                                      text: "lbl_other".tr,
                                                      iconSize: 17.54,
                                                      value: controller
                                                          .checkbox2.value,
                                                      padding: getPadding(
                                                          left: 21.27002),
                                                      onChange: (value) {
                                                        controller.checkbox2
                                                            .value = value;
                                                      }))
                                                ])),
                                        CustomButton(
                                            width: 199.46,
                                            text: "lbl_save".tr,
                                            margin: getMargin(
                                                left: 48,
                                                top: 30,
                                                right: 48,
                                                bottom: 20),
                                            onTap: onTapBtnSave,
                                            alignment: Alignment.center)
                                      ]))
                            ])))))));
  }

  onTapImgIcon() {
    Get.back();
  }

  void onTapBtnSave() {
    if (_formKey.currentState!.validate()) {
      PostItemsReq postItemsReq = PostItemsReq(
        fields: Fields(
          name: Get.find<PrefUtils>().getUserid(),
          slug: Get.find<PrefUtils>().getUserid(),
          city: controller.cityController.text,
          state: controller.stateController.text,
          country: controller.countryController.text,
          area: controller.areaController.text,
          pincode: controller.pincodeController.text as int,
          landmark: controller.landmarkController.text,
          type: Get.find<PrefUtils>().getUserid(),
          userid: Get.find<PrefUtils>().getUserid(),
        ),
      );
      controller.callCreateItems(
        postItemsReq.toJson(),
        successCall: _onCreateItemsSuccess,
        errCall: _onCreateItemsError,
      );
    }
  }

  void _onCreateItemsSuccess() {
    Get.toNamed(AppRoutes.myAddressesScreen);
  }

  void _onCreateItemsError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error",
        middleText: "Something bad happened On server");
  }
}
