import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiring_task_1/utils/app_colors.dart';
import 'package:hiring_task_1/widgets/button.dart';
import 'package:hiring_task_1/widgets/textfield_widget.dart';

import 'signup_controller.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormkey,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Signup",
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: "montserrat",
                            fontSize: 36,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 20),
                      CustomTextFeild(
                        textEditingController: controller.userNameController,
                        validator: (value) {
                          if ((value ?? "").isEmpty) {
                            return "Please fill in all fields.";
                          }
                          return null;
                        },
                        label: "User name",
                        filled: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextFeild(
                        filled: true,
                        textEditingController: controller.emailController,
                        validator: (value) {
                          if ((value ?? "").isEmpty) {
                            return "Please fill in all fields.";
                          }
                          if (!GetUtils.isEmail(value ?? "")) {
                            return "Please enter a valid email address.";
                          }
                          return null;
                        },
                        label: "Email Adress",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextFeild(
                        filled: true,
                        validator: (value) {
                          if ((value ?? "").isEmpty) {
                            return "Please fill in all fields.";
                          }
                          if (controller.passwordController.text.length < 8) {
                            return "Password must be at least 8 characters long.";
                          }
                          return null;
                        },
                        textEditingController: controller.passwordController,
                        isPasswordField: true,
                        label: "Password",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextFeild(
                        filled: true,
                        validator: (value) {
                          if ((value ?? "").isEmpty) {
                            return "Please fill in all fields.";
                          }
                          if (controller.passwordController.text !=
                              (value ?? "")) {
                            return "Password must be matched";
                          }
                          return null;
                        },
                        textEditingController: controller.cPasswordController,
                        isPasswordField: true,
                        label: "Confirm Password",
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Button(
                        btnName: "SignUp",
                        onTap: () async {
                          if (!controller.signupFormkey.currentState!
                              .validate()) {
                            return;
                          }
                          await showOkAlertDialog(
                              context: context,
                              message: "Sign Up Successful",
                              title: "Success");
                          Get.back();
                        },
                      ),
                    ],
                  ),
                ),
                RichText(
                    text: TextSpan(
                  text: "Alreday have an account? ",
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontFamily: "inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = Get.back,
                      text: "Log In",
                      style: TextStyle(
                          color: Colors.red,
                          fontFamily: "inter",
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                )),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
