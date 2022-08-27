import '/core/app_export.dart';
import 'package:grocery_app/presentation/contact_us_screen/models/contact_us_model.dart';
import 'package:flutter/material.dart';

class ContactUsController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameTwoController = TextEditingController();

  TextEditingController frameThreeController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  Rx<ContactUsModel> contactUsModelObj = ContactUsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameOneController.dispose();
    frameTwoController.dispose();
    frameThreeController.dispose();
    emailOneController.dispose();
  }
}
