import '../controller/my_cart_controller.dart';
import 'package:get/get.dart';

class MyCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCartController());
  }
}
