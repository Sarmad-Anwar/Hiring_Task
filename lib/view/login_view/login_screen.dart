import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiring_task_1/utils/app_colors.dart';
import 'package:hiring_task_1/view/login_view/login_controller.dart';
import 'package:hiring_task_1/view/signUp_view/signup_screen.dart';
import 'package:hiring_task_1/widgets/button.dart';
import 'package:hiring_task_1/widgets/textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormkey,
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Vector Smart Object 2.png",
                      height: 110,
                      width: 334,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontFamily: "montserrat",
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 30),
                    CustomTextFeild(
                      prefixIcon: Image.asset("assets/icons/Exclude.png"),
                      fillColor: AppColors.textfieldColor,
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
                      label: "Email Adress",
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CustomTextFeild(
                      prefixIcon: Image.asset("assets/icons/Lock.png"),
                      fillColor: AppColors.textfieldColor,
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
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(() => Checkbox(
                              value: controller.isChecked.value,
                              onChanged: (value) {
                                controller.isChecked.value = value!;
                              },
                              activeColor: AppColors.redColor,
                            )),
                        Text(
                          "Remember me",
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontFamily: "urbanist",
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    GetBuilder<LoginController>(builder: (context) {
                      return Button(
                        isLoading: true,
                        btnName: "Login",
                        onTap: controller.login,
                      );
                    }),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Forgot the password?",
                      style: TextStyle(
                          color: AppColors.redColor,
                          fontFamily: "urbanist",
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
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
              RichText(
                  text: TextSpan(
                text: "Don’t have an account? ",
                style: TextStyle(
                    color: AppColors.greyColor2,
                    fontFamily: "urbanist",
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.to(() => SignupScreen());
                      },
                    text: "Sign Up",
                    style: TextStyle(
                        color: Colors.red,
                        fontFamily: "urbanist",
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
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
    );
  }
}
