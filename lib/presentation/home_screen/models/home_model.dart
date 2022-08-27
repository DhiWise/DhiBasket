import 'package:get/get.dart';
import 'category_item_model.dart';
import 'frame10_item_model.dart';
import 'frame13_item_model.dart';
import 'frame14_item_model.dart';

class HomeModel {
  RxList<CategoryItemModel> frame9ItemList =
      RxList.filled(4, CategoryItemModel());

  RxList<Frame10ItemModel> frame10ItemList =
      RxList.filled(3, Frame10ItemModel());

  RxList<Frame13ItemModel> frame13ItemList =
      RxList.filled(3, Frame13ItemModel());

  RxList<Frame14ItemModel> frame14ItemList =
      RxList.filled(3, Frame14ItemModel());
}
