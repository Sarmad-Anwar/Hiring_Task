import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final genderController = TextEditingController();
  final phoneController = TextEditingController();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cPasswordController = TextEditingController();

  final signupFormkey = GlobalKey<FormState>();

  final List<DropDownValueModel> gender = [
    DropDownValueModel(name: "Male", value: "Male"),
    DropDownValueModel(name: "Female", value: "Female"),
  ];
}
