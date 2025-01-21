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
                        "Login",
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: "montserrat",
                            fontSize: 36,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 20),
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
                        height: 8,
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
                        height: 45,
                      ),
                      Button(
                        btnName: "Login",
                        onTap: controller.login,
                      ),
                    ],
                  ),
                ),
                RichText(
                    text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontFamily: "inter",
                      fontSize: 16,
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
