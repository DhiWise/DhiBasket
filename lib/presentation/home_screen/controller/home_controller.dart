import '/core/app_export.dart';
import 'package:grocery_app/presentation/home_screen/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/data/models/items/get_category_resp.dart';
import 'package:grocery_app/data/apiClient/api_client.dart';
import '../models/category_item_model.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  TextEditingController searchproductsController = TextEditingController();

  Rx<HomeModel> homeModelObj = HomeModel().obs;

  GetCategoryResp getItemsResp = GetCategoryResp();

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
    searchproductsController.dispose();
  }

  void callFetchItems(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchCategories(onSuccess: (resp) {
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
    getItemsResp = GetCategoryResp.fromJson(response);
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
    List<CategoryItemModel> frame9ItemModelList = [];
    if (getItemsResp.items! != null && getItemsResp.items!.isNotEmpty) {
      for (var element in getItemsResp.items!) {
        var frame9ItemModel = CategoryItemModel();
        frame9ItemModel.groceriesTxt.value = element.name!.toString();
        frame9ItemModel.imageImg.value = element.icon!.url!.toString();
        frame9ItemModel.categoryId.value = element.sId.toString();
        frame9ItemModel.categoryName.value = element.name!.toString();
        frame9ItemModelList.add(frame9ItemModel);
      }
    }
    homeModelObj.value.frame9ItemList.value = frame9ItemModelList;
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
}
