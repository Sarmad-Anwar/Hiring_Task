import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiring_task_1/utils/app_colors.dart';
import 'package:hiring_task_1/view/profile_view/profile_controller.dart';
import 'package:hiring_task_1/widgets/button.dart';

import '../../controllers/userbase_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: Get.back, child: Icon(Icons.arrow_back_ios)),
                        Text(
                          'Profile Screen',
                          style: TextStyle(
                              color: AppColors.blackColor1,
                              fontFamily: "montserrat",
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 16,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.blackColor1),
                      padding: EdgeInsets.all(6),
                      child: Image.asset("assets/images/logo1.png"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      UserbaseController.userData.email,
                      style: TextStyle(
                          color: AppColors.blackColor1,
                          fontFamily: "montserrat",
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Button(
                btnName: "logout",
                onTap: controller.logout,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
