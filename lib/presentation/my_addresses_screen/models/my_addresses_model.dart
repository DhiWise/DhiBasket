import 'package:get/get.dart';
import 'my_addresses_item_model.dart';

class MyAddressesModel {
  RxList<MyAddressesItemModel> myAddressesItemList =
      RxList.filled(2, MyAddressesItemModel());
}
