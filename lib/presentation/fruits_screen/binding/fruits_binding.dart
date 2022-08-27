import '../controller/fruits_controller.dart';
import 'package:get/get.dart';

class FruitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FruitsController());
  }
}
