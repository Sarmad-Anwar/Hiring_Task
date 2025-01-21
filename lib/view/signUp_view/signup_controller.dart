import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final cPasswordController = TextEditingController();

  final signupFormkey = GlobalKey<FormState>();
}
