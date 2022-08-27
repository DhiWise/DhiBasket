import '../controller/terms_of_services_controller.dart';
import 'package:get/get.dart';

class TermsOfServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermsOfServicesController());
  }
}
