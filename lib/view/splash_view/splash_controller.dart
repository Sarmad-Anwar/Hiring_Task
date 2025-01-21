import 'package:get/get.dart';
import 'package:hiring_task_1/view/login_view/login_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => const LoginScreen());
    });
    super.onInit();
  }
}
