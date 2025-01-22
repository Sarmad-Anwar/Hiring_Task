import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiring_task_1/controllers/userbase_controller.dart';
import 'package:hiring_task_1/utils/app_colors.dart';
import 'package:hiring_task_1/view/user_detail/user_details.dart';
import 'package:hiring_task_1/widgets/app_cache_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(37, 24, 40, 0),
              height: Get.height * 0.35,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Group1.png"),
                  fit: BoxFit.cover,
                ),
                color: AppColors.redColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello!",
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontFamily: "urbanist",
                                fontSize: 30,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "${UserbaseController.userData.firstName} ${UserbaseController.userData.lastName}",
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontFamily: "urbanist",
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          // Get.to(() => ProfileScreen());
                        },
                        child: AppCacheImage(
                          imageUrl: UserbaseController.userData.avatar ?? "",
                          height: 50,
                          width: 50,
                          round: 60,
                        ),
                      )
                    ],
                  ),
                  Stack(children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 21, vertical: 19),
                      height: 185,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Earnings",
                                style: TextStyle(
                                    color: AppColors.blackColor2,
                                    fontFamily: "urbanist",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '\$9,545',
                                style: TextStyle(
                                    color: AppColors.redColor,
                                    fontFamily: "urbanist",
                                    fontSize: 40,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                          Expanded(
                            child: Image.asset(
                              "assets/images/undraw_treasure_of-9-i 1.png",
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: -8,
                        left: -6,
                        child: Image.asset("assets/images/Vector 660.png")),
                    Positioned(
                      bottom: 23,
                      left: 22,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => UserProfileView());
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 9),
                          decoration: BoxDecoration(
                            color: Color(0xffD6EBFF),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Datails",
                            style: TextStyle(
                                color: AppColors.purpleColor,
                                fontFamily: "urbanist",
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 27, 30, 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/Mask group (6).png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Image.asset("assets/images/Mask group.png"),
                  ),
                  Image.asset("assets/images/Mask group (1).png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Image.asset("assets/images/Mask group (2).png"),
                  ),
                  Image.asset("assets/images/Mask group (3).png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Image.asset("assets/images/Mask group (4).png"),
                  ),
                  Image.asset("assets/images/Mask group (5).png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 24),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Invite your friends and get big discounts",
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontFamily: "urbanist",
                        fontSize: 32,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Invite  your other friends to our platform to get plenty of discounts waiting for you!",
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontFamily: "urbanist",
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.redColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/Vector (2).png"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Copy Referral link",
                                style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: "urbanist",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Send to",
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontFamily: "urbanist",
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.redColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/Vector3.png"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Send Referral Link ",
                                style: TextStyle(
                                    color: AppColors.redColor,
                                    fontFamily: "urbanist",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
