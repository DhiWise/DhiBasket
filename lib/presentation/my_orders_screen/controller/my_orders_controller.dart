import '/core/app_export.dart';
import 'package:grocery_app/presentation/my_orders_screen/models/my_orders_model.dart';

class MyOrdersController extends GetxController {
  Rx<MyOrdersModel> myOrdersModelObj = MyOrdersModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
