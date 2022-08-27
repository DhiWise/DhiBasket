import 'package:get/get.dart';
import 'listshimlaapple_item_model.dart';
import 'listframe_item_model.dart';

class MyCartModel {
  RxList<ListshimlaappleItemModel> listshimlaappleItemList =
      RxList.filled(3, ListshimlaappleItemModel());

  RxList<ListframeItemModel> listframeItemList =
      RxList.filled(2, ListframeItemModel());
}
