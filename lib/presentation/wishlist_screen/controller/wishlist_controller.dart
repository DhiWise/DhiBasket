import 'package:grocery_app/routes/navigation_args.dart';

import '/core/app_export.dart';
import 'package:grocery_app/presentation/wishlist_screen/models/wishlist_model.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/data/models/items/post_items_resp.dart';
import 'package:grocery_app/data/models/items/get_fruits_resp.dart';
import 'package:grocery_app/data/apiClient/api_client.dart';
import '../models/wishlist_item_model.dart';

class WishlistController extends GetxController with StateMixin<dynamic> {
  Rx<WishlistModel> wishlistModelObj = WishlistModel().obs;

  GetFruitsResp getItemsResp = GetFruitsResp();

  PostItemsResp postItemsResp = PostItemsResp();

  @override
  void onReady() {
    super.onReady();
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
    return Get.find<ApiClient>().fetchWishlist(onSuccess: (resp) {
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
    List<WishlistItemModel> wishlistItemModelList = [];
    if (getItemsResp.items! != null && getItemsResp.items!.isNotEmpty) {
      for (var element in getItemsResp.items!) {
        var wishlistItemModel = WishlistItemModel();
        wishlistItemModel.strawberryTxt.value = element.name!.toString();
        // wishlistItemModel.priceTxt.value = element.price!.toString();
        // wishlistItemModel.imageImg.value = element.image!.url!.toString();
        // wishlistItemModel.k1kgTxt.value = element.weight!.toString();
        wishlistItemModel.id.value = element.sId.toString();
        wishlistItemModelList.add(wishlistItemModel);
      }
    }
    print(wishlistItemModelList.length);
    wishlistModelObj.value.wishlistItemList.value = wishlistItemModelList;
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
