import 'package:get/get.dart';
import 'package:hiring_task_1/model/user_model.dart';

class UserbaseController extends GetxController {
  UserModel userModel = UserModel(email: "", password: "");
  static updateUpdateUser(UserModel user) {
    final controller = Get.put(UserbaseController(), permanent: true);
    controller.userModel = user;
    controller.update();
  }

  static UserModel get userData {
    return Get.put(UserbaseController(), permanent: true).userModel;
  }
}
