import '/core/app_export.dart';
import 'package:grocery_app/presentation/about_us_screen/models/about_us_model.dart';

class AboutUsController extends GetxController {
  Rx<AboutUsModel> aboutUsModelObj = AboutUsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
