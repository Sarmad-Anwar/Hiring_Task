import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiring_task_1/view/splash_view/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/1.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
