import 'package:flutter/material.dart';
import 'package:grocery_app/data/apiClient/api_client.dart';
import 'package:grocery_app/data/models/items/category_resp.dart';
import 'package:grocery_app/data/models/items/fruits_resp.dart';
import 'package:grocery_app/presentation/explore_screen/models/explore_model.dart';

import '../models/fruits_item_model.dart';
import '/core/app_export.dart';

class ExploreController extends GetxController with StateMixin<dynamic> {
  Rx<ExploreModel> exploreModelObj = ExploreModel().obs;

  CategoryResp categoryResp = CategoryResp.empty();

  FruitsResp productsResp = FruitsResp.empty();

  @override
  void onReady() {
    super.onReady();
    String userId = Get.find<PrefUtils>().getUserid();
    if (userId.isEmpty) {
      Get.offNamed(AppRoutes.loginWithEmailIdScreen);
    }
    this.callFetchCategories(
      successCall: _onFetchCategorySuccess,
      errCall: _onFetchCategoryError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchCategories(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchCategories(onSuccess: (resp) {
      onFetchCategorySuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchCategorySuccess(var response) {
    categoryResp = CategoryResp.fromJson(response);
  }

  void _onFetchCategorySuccess() async {
    List<String> ids = [];
    if (categoryResp.items.isNotEmpty) {
      // for (var item in categoryResp.items!) {
      //   this.callFetchProducts(
      //       successCall: _onFetchProductSuccess,
      //       errCall: _onFetchProductError,
      //       catIds: item.sId);
      // }

      this.callFetchProducts(
          successCall: _onFetchProductSuccess,
          errCall: _onFetchProductError,
          catIds: categoryResp.items[0].sId);
    }
  }

  void _onFetchCategoryError() {
    Get.rawSnackbar(
      messageText: Text(
        'Something bad Happened on server',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void callFetchProducts(
      {VoidCallback? successCall, VoidCallback? errCall, catIds}) async {
    return Get.find<ApiClient>().fetchProducts(
        onSuccess: (resp) {
          onFetchProductSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchError(err);
          if (errCall != null) {
            errCall();
          }
        },
        id: catIds);
  }

  void onFetchProductSuccess(var response) {
    productsResp = FruitsResp.fromJson(response);
  }

  void onFetchError(var err) {
    Get.rawSnackbar(
      messageText: Text(
        '$err',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void _onFetchProductSuccess() {
    List<FruitsItemModel> frame3ItemModelList = [];
    // List<VegetablesItemModel> vegetables = [];
    if (productsResp.items.isNotEmpty) {
      for (var element in productsResp.items) {
        var frame3ItemModel = FruitsItemModel();
        frame3ItemModel.priceTxt.value = element.price.toString();
        frame3ItemModel.nameTxt.value = element.name.toString();
        frame3ItemModel.imageImg.value = element.image.url.toString();
        frame3ItemModel.weightTxt.value = element.weight.toString();
        frame3ItemModelList.add(frame3ItemModel);
      }
    }
    exploreModelObj.value.fruitsItemList.value = frame3ItemModelList;
  }

  void _onFetchProductError() {
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
