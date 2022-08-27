import 'package:get/get.dart';
import 'wishlist_item_model.dart';

class WishlistModel {
  RxList<WishlistItemModel> wishlistItemList =
      RxList.filled(0, WishlistItemModel());
}
