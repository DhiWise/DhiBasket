import '../controller/login_with_email_id_controller.dart';
import 'package:get/get.dart';

class LoginWithEmailIdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginWithEmailIdController());
  }
}
