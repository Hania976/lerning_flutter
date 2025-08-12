import 'package:get/get.dart';
import 'package:hania/view/result.dart' show ScreenResult;

class ControllerLogin extends GetxController {
  var name = '';
  var password = '';

  void login(String n, String p) {
    if (n.isEmpty || p.isEmpty) {
      Get.snackbar('Error', 'Please fill in all fields');
    } else {
      name = n;
      password = p;
      Get.snackbar('Success', 'Welcome $n');
      Get.to(ScreenResult(result: 100, name: n));
    }
  }

  @override
  void onInit() {
    print(' screen is create');
    super.onInit();
    // Any initialization logic can go here
  }

  @override
  void onClose() {
    Get.snackbar('close', 'home is close');
    super.onClose();
  }
}
