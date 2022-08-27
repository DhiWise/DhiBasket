import 'package:grocery_app/routes/navigation_args.dart';

import '/core/app_export.dart';
import 'package:grocery_app/presentation/fruits_screen/models/fruits_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/data/models/items/post_items_resp.dart';
import 'package:grocery_app/data/models/items/get_fruits_resp.dart';
import 'package:grocery_app/data/apiClient/api_client.dart';
import '../models/fruits_item_model.dart';

class FruitsController extends GetxController with StateMixin<dynamic> {
  Rx<FruitsModel> fruitsModelObj = FruitsModel().obs;

  GetFruitsResp getItemsResp = GetFruitsResp();

  var categoryId = Get.arguments[NavigationArgs.categoryId];

  var categoryName = Get.arguments[NavigationArgs.categoryName];

  PostItemsResp postItemsResp = PostItemsResp();

  @override
  void onReady() {
    super.onReady();
    if (categoryId.toString().isEmpty || categoryName.toString().isEmpty) {
      Get.toNamed(AppRoutes.homeScreen);
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
    return Get.find<ApiClient>().fetchProducts(
        onSuccess: (resp) {
          onFetchItemsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchItemsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        id: categoryId);
  }

  void onFetchItemsSuccess(var response) {
    getItemsResp = GetFruitsResp.fromJson(response);
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
    List<FruitsItemModel> fruitsItemModelList = [];
    if (getItemsResp.items! != null && getItemsResp.items!.isNotEmpty) {
      for (var element in getItemsResp.items!) {
        var fruitsItemModel = FruitsItemModel();
        fruitsItemModel.strawberryTxt.value = element.name!.toString();
        fruitsItemModel.priceTxt.value = element.price!.toString();
        fruitsItemModel.imageImg.value = element.image!.url!.toString();
        fruitsItemModel.k1kgTxt.value = element.weight!.toString();
        fruitsItemModel.id.value = element.sId.toString();
        fruitsItemModelList.add(fruitsItemModel);
      }
    }
    fruitsModelObj.value.fruitsItemList.value = fruitsItemModelList;
  }

  void _onFetchItemsError() {
    Get.rawSnackbar(
      messageText: Text(
        'Something bad Happened on server',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void callCreateItems(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createItems(
        onSuccess: (resp) {
          onCreateItemsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateItemsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateItemsSuccess(var response) {
    postItemsResp = PostItemsResp.fromJson(response);
  }

  void onCreateItemsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
          messageText: Text('$err', style: TextStyle(color: Colors.white)));
    }
  }
}
