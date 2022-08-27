import '../controller/add_new_address_controller.dart';
import 'package:get/get.dart';

class AddNewAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewAddressController());
  }
}
