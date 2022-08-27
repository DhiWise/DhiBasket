import 'package:get/get.dart';
import 'fruits_item_model.dart';
import 'vegetables_item_model.dart';

class ExploreModel {
  RxList<FruitsItemModel> fruitsItemList = RxList.filled(0, FruitsItemModel());

  RxList<VegetablesItemModel> vegetablesItemList =
      RxList.filled(4, VegetablesItemModel());
}
