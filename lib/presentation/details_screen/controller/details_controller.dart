import 'package:flutter/material.dart';
import 'package:grocery_app/data/apiClient/api_client.dart';
import 'package:grocery_app/data/models/items/fruits_resp.dart';
import 'package:grocery_app/data/models/product/product_resp.dart';
import 'package:grocery_app/presentation/details_screen/models/details_item_model.dart';
import 'package:grocery_app/presentation/details_screen/models/details_model.dart';
import 'package:grocery_app/routes/navigation_args.dart';

import '/core/app_export.dart';

class DetailsController extends GetxController with StateMixin<dynamic> {
  var productId = Get.arguments[NavigationArgs.productId];

  var categoryId = Get.arguments[NavigationArgs.categoryId];

  Rx<DetailsModel> detailsModelObj = DetailsModel().obs;

  ProductResp response = ProductResp.empty();

  FruitsResp getItemsResp = FruitsResp.empty();

  @override
  void onReady() {
    super.onReady();
    this.callFetch62a06951446cb4e885cca1cb(
      successCall: _onFetch62a06951446cb4e885cca1cbSuccess,
      errCall: _onFetch62a06951446cb4e885cca1cbError,
    );
    this.callFetchItems(
      successCall: _onFetchItemsSuccess,
      errCall: _onFetchItemsError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetch62a06951446cb4e885cca1cb(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchProduct(
        onSuccess: (resp) {
          onFetch62a06951446cb4e885cca1cbSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetch62a06951446cb4e885cca1cbError(err);
          if (errCall != null) {
            errCall();
          }
        },
        id: productId);
  }

  void onFetch62a06951446cb4e885cca1cbSuccess(var resp) {
    response = ProductResp.fromJson(resp);
  }

  void onFetch62a06951446cb4e885cca1cbError(var err) {
    Get.rawSnackbar(
      messageText: Text(
        '$err',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void _onFetch62a06951446cb4e885cca1cbSuccess() {
    if (response.items.isNotEmpty) {
      var i = response.items[0];
      detailsModelObj.value.imageImg.value = i.image.url.toString();
      detailsModelObj.value.greenAppleTxt.value = i.name.toString();
      detailsModelObj.value.priceTxt.value = i.price.toString();
      detailsModelObj.value.descriptionTxt.value = i.description.toString();
    }
  }

  void _onFetch62a06951446cb4e885cca1cbError() {}

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
    getItemsResp = FruitsResp.fromJson(response);
  }

  void onFetchItemsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchItemsSuccess() {
    List<DetailsItemModel> detailsItemModelList = [];
    if (getItemsResp.items.isNotEmpty) {
      for (var element in getItemsResp.items) {
        if (element.sId.toString() != productId.toString()) {
          var detailsItemModel = DetailsItemModel();
          detailsItemModel.pinappleTxt.value = element.name.toString();
          detailsItemModel.imageImg.value = element.image.url.toString();
          detailsItemModelList.add(detailsItemModel);
        }
      }
    }
    detailsModelObj.value.detailsItemList.value = detailsItemModelList;
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
