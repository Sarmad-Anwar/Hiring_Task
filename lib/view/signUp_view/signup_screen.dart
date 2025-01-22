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
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 34),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: Get.back, child: Icon(Icons.arrow_back)),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Create account",
                      style: TextStyle(
                          color: AppColors.blackColor2,
                          fontFamily: "urbanist",
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.whiteColor,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.blackColor.withValues(alpha: 0.1),
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(0, 0))
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.whiteColor,
                        ),
                        child: Text(
                          "Consumer",
                          style: TextStyle(
                              color: AppColors.redColor,
                              fontFamily: "urbanist",
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.redColor,
                        ),
                        child: Text(
                          "Service Povider",
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: "urbanist",
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Column(
                    children: [
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
                        fillColor: AppColors.textfieldColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextFeild(
                        filled: true,
                        textEditingController: controller.emailController,
                        validator: (value) {
                          if ((value ?? "").isEmpty) {
                            return "Please enter your email address.";
                          }
                          if (!GetUtils.isEmail(value ?? "")) {
                            return "Please enter a valid email address.";
                          }
                          return null;
                        },
                        label: "Email",
                        fillColor: AppColors.textfieldColor,
                        sufixIcon: Image.asset("assets/icons/Group.png"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextFeild(
                        filled: true,
                        validator: (value) {
                          if ((value ?? "").isEmpty) {
                            return "Please enter your password.";
                          }
                          if (controller.passwordController.text.length < 8) {
                            return "Password must be at least 8 characters long.";
                          }
                          return null;
                        },
                        textEditingController: controller.passwordController,
                        isPasswordField: true,
                        label: "Password",
                        fillColor: AppColors.textfieldColor,
                        sufixIcon: Image.asset("assets/icons/Lock2.png"),
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
                        fillColor: AppColors.textfieldColor,
                        sufixIcon: Image.asset("assets/icons/Lock2.png"),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      RichText(
                          text: TextSpan(
                        text: "By continuing you agree to our",
                        style: TextStyle(
                            color: AppColors.greyColor2,
                            fontFamily: "urbanist",
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(
                            text: " Terms of Service ",
                            style: TextStyle(
                                color: AppColors.purpleColor,
                                fontFamily: "urbanist",
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: " and ",
                            style: TextStyle(
                                color: AppColors.greyColor2,
                                fontFamily: "urbanist",
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: " Privacy Policy ",
                            style: TextStyle(
                                color: AppColors.purpleColor,
                                fontFamily: "urbanist",
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 24,
                      ),
                      Button(
                        isLoading: false,
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
                      SizedBox(
                        height: 24,
                      ),
                      RichText(
                          text: TextSpan(
                        text: "Alreday have an account? ",
                        style: TextStyle(
                            color: AppColors.greyColor2,
                            fontFamily: "urbanist",
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = Get.back,
                            text: " Log In",
                            style: TextStyle(
                                color: AppColors.blueColor,
                                fontFamily: "urbanist",
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      )),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "or continue with",
                        style: TextStyle(
                            color: AppColors.greyColor,
                            fontFamily: "urbanist",
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 129,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset("assets/icons/Frame.png"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 60,
                            width: 129,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                                "assets/icons/Auto Layout Horizontal.png"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
