import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hiring_task_1/view/splash_view/splash_screen.dart';

class ProfileController extends GetxController {
  logout() async {
    final res = await showOkCancelAlertDialog(
        context: Get.context!,
        title: "Logout",
        message: "Are you sure you want to logout?",
        cancelLabel: "Not now",
        okLabel: "Yes");
    if (res == OkCancelResult.cancel) {
      return;
    }
    await GetStorage().remove("userData");
    update();
    Get.deleteAll(force: true);
    Get.offAll(() => SplashScreen());
  }

  @override
  void onInit() {
    // oninitFunc();
    super.onInit();
  }
}
