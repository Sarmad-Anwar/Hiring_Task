import 'package:hiring_task_1/model/user_model.dart';
import 'package:hiring_task_1/view/main_view/main_view.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import '../../controllers/userbase_controller.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;
  var errorMessage = ''.obs;

  static const String _staticEmail = 'user@speedforce.com';
  static const String _staticPassword = 'password';
  final loginFormkey = GlobalKey<FormState>();
  Future<bool> mockLogin(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    return email == _staticEmail && password == _staticPassword;
  }

  void login() async {
    errorMessage.value = '';

    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (!loginFormkey.currentState!.validate()) {
      errorMessage.value = 'Please fill in all fields.';
      return;
    }
    isLoading = true;
    update();
    final success = await mockLogin(email, password);
    isLoading = false;
    update();
    if (success) {
      try {
        dio.Response response = await dio.Dio().get(
            'https://my-json-server.typicode.com/hameezk/HiringTask/login');

        if (response.statusCode == 200) {
          final model = Autogenerated.fromJson(response.data);
          UserbaseController.updateUpdateUser(model);
        } else {
          showOkAlertDialog(
              context: Get.context!,
              title: 'Error',
              message: 'Failed to load user data.');
          return;
        }
        Get.offAll(() => MainView());
      } catch (e) {
        showOkAlertDialog(
            context: Get.context!,
            title: 'Error',
            message: 'Failed to load user data .');
        return;
      }
    } else {
      isLoading = false;
      update();
      showOkAlertDialog(
          context: Get.context!,
          title: 'Error',
          message: 'Invalid email or password.');
      errorMessage.value = 'Invalid email or password.';
    }
  }

  RxBool isChecked = false.obs;

  void toggleCheckbox(bool value) {
    isChecked.value = value;
  }
}
