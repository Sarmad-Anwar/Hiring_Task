import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiring_task_1/controllers/userbase_controller.dart';
import 'package:hiring_task_1/utils/app_colors.dart';
import 'package:hiring_task_1/view/profile_view/profile_screen.dart';

import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => ProfileScreen());
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.whiteColor),
              height: 30,
              width: 30,
              child: Icon(Icons.person_2_rounded),
            ),
          )
        ],
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: Get.width,
          ),
          Text(
            'Welcome! \n${UserbaseController.userData.email}',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.blackColor1,
                fontFamily: "montserrat",
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
