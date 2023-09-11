import 'package:flutter/material.dart';
import 'package:grocery_app/data/apiClient/api_client.dart';
import 'package:grocery_app/data/models/items/post_items_resp.dart';
import 'package:grocery_app/presentation/register_screen/models/register_model.dart';

import '/core/app_export.dart';

class RegisterController extends GetxController {
  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController cpassword = TextEditingController();

  TextEditingController contact = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  PostItemsResp postItemsResp = PostItemsResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    name.dispose();
    email.dispose();
    password.dispose();
    cpassword.dispose();
    contact.dispose();
  }

  void callCreateUsers(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createUser(
        onSuccess: (resp) {
          print('CREATE SUCCESS $resp');
          onCreateUsersSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          print('CREATE ERROR $err');
          onCreateUsersError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateUsersSuccess(var response) {
    postItemsResp = PostItemsResp.fromJson(response);
  }

  void onCreateUsersError(var err) {
    Get.rawSnackbar(
        messageText: Text('$err', style: TextStyle(color: Colors.white)));
  }
}
