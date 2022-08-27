import 'package:grocery_app/core/app_export.dart';
import 'package:grocery_app/data/apiClient/api_client.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../firebase_options.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() async {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }
}
