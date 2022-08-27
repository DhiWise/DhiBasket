import 'package:grocery_app/data/apiClient/api_client.dart';
import 'package:grocery_app/data/models/items/post_items_resp.dart';

import '/core/app_export.dart';
import 'package:grocery_app/presentation/login_with_email_id_screen/models/login_with_email_id_model.dart';
import 'package:flutter/material.dart';

class LoginWithEmailIdController extends GetxController {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  Rx<LoginWithEmailIdModel> loginWithEmailIdModelObj =
      LoginWithEmailIdModel().obs;

  @override
  void onReady() {
    super.onReady();
    String userId = Get.find<PrefUtils>().getUserid();
    if (userId.isNotEmpty) {
      Get.offNamed(AppRoutes.homeScreen);
    }
  }

  @override
  void onClose() {
    super.onClose();
    email.dispose();
    password.dispose();
  }
}
