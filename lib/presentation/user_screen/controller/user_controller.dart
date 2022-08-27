import '/core/app_export.dart';
import 'package:grocery_app/presentation/user_screen/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/data/models/ItemId/get_item_id_resp.dart';
import 'package:grocery_app/data/apiClient/api_client.dart';

class UserController extends GetxController {
  Rx<UserModel> userModelObj = UserModel().obs;

  GetItemIdResp getItemIdResp = GetItemIdResp();

  @override
  void onReady() {
    super.onReady();
    String userId = Get.find<PrefUtils>().getUserid();
    if (userId.isEmpty) {
      Get.offNamed(AppRoutes.loginWithEmailIdScreen);
    }
    this.callFetchItemId(
      successCall: _onFetchItemIdSuccess,
      errCall: _onFetchItemIdError,
      item_id: Get.find<PrefUtils>().getUserid(),
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchItemId(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      String? item_id}) async {
    return Get.find<ApiClient>().fetchUser(
        onSuccess: (resp) {
          onFetchItemIdSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchItemIdError(err);
          if (errCall != null) {
            errCall();
          }
        },
        item_id: item_id);
  }

  void onFetchItemIdSuccess(var response) {
    getItemIdResp = GetItemIdResp.fromJson(response);
  }

  void onFetchItemIdError(var err) {
    Get.rawSnackbar(
      messageText: Text(
        '$err',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void _onFetchItemIdSuccess() {
    if (getItemIdResp.items != null && getItemIdResp.items!.isNotEmpty) {
      var i = getItemIdResp.items![0];
      userModelObj.value.name.value = i.name.toString();
      userModelObj.value.username.value = i.email.toString();
    }
  }

  void _onFetchItemIdError() {
    Get.rawSnackbar(
      messageText: Text(
        'Something bad Happened on server',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
