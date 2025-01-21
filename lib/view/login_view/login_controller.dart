import 'dart:convert';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiring_task_1/view/home_view/home_screen.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isLoading = false.obs;
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
    isLoading.value = true;

    final success = await mockLogin(email, password);
    isLoading.value = false;

    if (success) {
      GetStorage().write(
          "userData", json.encode({"email": email, "password": password}));
      Get.offAll(() => HomeScreen());
    } else {
      isLoading.value = false;
      showOkAlertDialog(
          context: Get.context!,
          title: 'Error',
          message: 'Invalid email or password.');
      errorMessage.value = 'Invalid email or password.';
    }
  }
}
