import 'package:get/get.dart';
import 'details_item_model.dart';

class DetailsModel {
  Rx<String> imageImg = Rx('...');

  Rx<String> greenAppleTxt = Rx('Lorem ipsum dolor sit amet');

  Rx<String> priceTxt = Rx('Lorem ipsum dolor sit amet');

  Rx<String> descriptionTxt = Rx('Lorem ipsum dolor sit amet');

  RxList<DetailsItemModel> detailsItemList =
      RxList.filled(3, DetailsItemModel());
}
