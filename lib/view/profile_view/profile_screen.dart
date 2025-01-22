import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiring_task_1/controllers/userbase_controller.dart';
import 'package:hiring_task_1/utils/app_colors.dart';
import 'package:hiring_task_1/view/profile_view/profile_controller.dart';
import 'package:hiring_task_1/widgets/button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back)),
                  Text(
                    'My Profile',
                    style: TextStyle(
                        color: AppColors.blackColor2,
                        fontFamily: "urbanist",
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(Icons.menu)
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                          "assets/images/Group 2.png",
                        ))),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              child: Image.asset("assets/images/Ellipse.png"),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "${UserbaseController.userData.firstName} ${UserbaseController.userData.lastName}",
                              style: TextStyle(
                                  color: AppColors.blackColor2,
                                  fontFamily: "urbanist",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              UserbaseController.userData.email ?? "",
                              style: TextStyle(
                                  color: AppColors.blackColor2,
                                  fontFamily: "urbanist",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 81,
                            width: 180,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.blackColor2
                                          .withValues(alpha: 0.1),
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                      offset: Offset(0, 4))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Earnings",
                                  style: TextStyle(
                                      color: AppColors.blackColor2,
                                      fontFamily: "urbanist",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "\$9500",
                                  style: TextStyle(
                                      color: AppColors.redColor,
                                      fontFamily: "urbanist",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 81,
                            width: 180,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.blackColor2
                                          .withValues(alpha: 0.1),
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                      offset: Offset(0, 4))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Ratings",
                                  style: TextStyle(
                                      color: AppColors.blackColor2,
                                      fontFamily: "urbanist",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                      color: AppColors.redColor,
                                      fontFamily: "urbanist",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "About Me",
                        style: TextStyle(
                            color: AppColors.blackColor2,
                            fontFamily: "urbanist",
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RichText(
                          text: TextSpan(
                        text:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ",
                        style: TextStyle(
                            color: Color(0xff424242),
                            fontFamily: "urbanist",
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            text: " view more...",
                            style: TextStyle(
                                color: AppColors.redColor,
                                fontFamily: "urbanist",
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      )),
                      SizedBox(
                        height: 24,
                      ),
                      Divider(
                        height: 0,
                        color: Color(0xffEEEEEE),
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/icons/Group7.png"),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Text(
                              "Business Location",
                              style: TextStyle(
                                  color: AppColors.blackColor2,
                                  fontFamily: "urbanist",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Icon(
                            size: 20,
                            Icons.arrow_forward_ios,
                            color: AppColors.blueColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Divider(
                        height: 0,
                        color: Color(0xffEEEEEE),
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/icons/Group7.png"),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Text(
                              "Bookings",
                              style: TextStyle(
                                  color: AppColors.blackColor2,
                                  fontFamily: "urbanist",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Icon(
                            size: 20,
                            Icons.arrow_forward_ios,
                            color: AppColors.blueColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Divider(
                        height: 0,
                        color: Color(0xffEEEEEE),
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/icons/Group 8.png"),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Text(
                              "My Services",
                              style: TextStyle(
                                  color: AppColors.blackColor2,
                                  fontFamily: "urbanist",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Icon(
                            size: 20,
                            Icons.arrow_forward_ios,
                            color: AppColors.blueColor,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Button(
                isLoading: false,
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
