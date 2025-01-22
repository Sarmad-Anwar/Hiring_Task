import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiring_task_1/utils/app_colors.dart';
import 'package:hiring_task_1/view/home_view/home_screen.dart';
import 'package:hiring_task_1/view/main_view/main_view_controller.dart';
import 'package:hiring_task_1/view/profile_view/profile_screen.dart';
import 'package:hiring_task_1/widgets/custom_navigation.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainViewController());
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(child: GetBuilder<MainViewController>(builder: (context) {
        return Column(
          children: [
            Expanded(
                child: IndexedStack(
              index: controller.selectedIndex,
              children: _userMainScreen,
            )),
            CustomNavigation(
              currentIndex: controller.selectedIndex,
              ontap: controller.updateIndex,
            )
          ],
        );
      })),
    );
  }
}

List<Widget> _userMainScreen = [
  HomeScreen(),
  Container(),
  Container(),
  ProfileScreen()
];
