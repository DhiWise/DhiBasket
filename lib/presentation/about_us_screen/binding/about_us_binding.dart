import '../controller/about_us_controller.dart';
import 'package:get/get.dart';

class AboutUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutUsController());
  }
}
