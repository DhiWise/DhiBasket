import '/core/app_export.dart';
import 'package:grocery_app/presentation/my_addresses_screen/models/my_addresses_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/data/models/items/get_items_resp.dart';
import 'package:grocery_app/data/apiClient/api_client.dart';
import '../models/my_addresses_item_model.dart';

class MyAddressesController extends GetxController {
  Rx<MyAddressesModel> myAddressesModelObj = MyAddressesModel().obs;

  GetItemsResp getItemsResp = GetItemsResp();

  @override
  void onReady() {
    super.onReady();
    String userId = Get.find<PrefUtils>().getUserid();
    if (userId.isEmpty) {
      Get.offNamed(AppRoutes.loginWithEmailIdScreen);
    }
    this.callFetchItems(
      successCall: _onFetchItemsSuccess,
      errCall: _onFetchItemsError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchItems(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchAddress(onSuccess: (resp) {
      onFetchItemsSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchItemsError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchItemsSuccess(var response) {
    getItemsResp = GetItemsResp.fromJson(response);
  }

  void onFetchItemsError(var err) {
    Get.rawSnackbar(
      messageText: Text(
        '$err',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void _onFetchItemsSuccess() {
    List<MyAddressesItemModel> myAddressesItemModelList = [];
    if (getItemsResp.items!.isNotEmpty) {
      for (var element in getItemsResp.items!) {
        var myAddressesItemModel = MyAddressesItemModel();
        myAddressesItemModel.homeTxt.value = element.name!.toString();
        String address =
            "${element.area!.toString()}, ${element.city!.toString()}, ${element.state!.toString()}, ${element.landmark!.toString()}, ${element.pincode!.toString()}";
        myAddressesItemModel.k4517WashingtonTxt.value = address;
        myAddressesItemModelList.add(myAddressesItemModel);
      }
    }
    myAddressesModelObj.value.myAddressesItemList.value =
        myAddressesItemModelList;
  }

  void _onFetchItemsError() {}
}
