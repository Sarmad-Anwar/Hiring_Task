import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hiring_task_1/controllers/userbase_controller.dart';

import '../../model/user_model.dart';

class HomeController extends GetxController {
  oninitFunc() async {
    String text = GetStorage().read("userData") ?? "";
    if (text.isNotEmpty) {
      Map<String, dynamic> userData = json.decode(text);
      UserbaseController.updateUpdateUser(UserModel.fromMap(userData));
      update();
    }
  }

  @override
  void onInit() {
    oninitFunc();
    super.onInit();
  }
}
