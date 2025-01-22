import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiring_task_1/controllers/userbase_controller.dart';
import 'package:hiring_task_1/utils/app_colors.dart';
import 'package:hiring_task_1/widgets/app_cache_image.dart';
import 'package:hiring_task_1/widgets/see_more.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 350,
                  child: Row(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            AppCacheImage(
                              imageUrl:
                                  UserbaseController.userData.avatar ?? "",
                              width: double.infinity,
                              height: 350,
                              round: 0,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 60),
                      Row(children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    " Status :",
                                    style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontFamily: "urbanist",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    " ${UserbaseController.userData.status ?? ""}",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: "urbanist",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "${UserbaseController.userData.firstName ?? ""} ${UserbaseController.userData.lastName ?? ""}",
                                      style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontFamily: "urbanist",
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        " ${UserbaseController.userData.isVerified ?? ""}",
                                        style: TextStyle(
                                            color: AppColors.redColor,
                                            fontFamily: "urbanist",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.verified,
                                        color: Colors.green,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    " Joined at :",
                                    style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontFamily: "urbanist",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    " ${UserbaseController.userData.joinedAt ?? ""}",
                                    style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontFamily: "urbanist",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    " Role :",
                                    style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontFamily: "urbanist",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    " ${UserbaseController.userData.role ?? ""}",
                                    style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontFamily: "urbanist",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    " Gender :",
                                    style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontFamily: "urbanist",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    " ${UserbaseController.userData.gender ?? ""}",
                                    style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontFamily: "urbanist",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    " Phone :",
                                    style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontFamily: "urbanist",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    " ${UserbaseController.userData.phone ?? ""}",
                                    style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontFamily: "urbanist",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Bio :",
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontFamily: "urbanist",
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          TextWithSeeMore(
                              text: UserbaseController.userData.bio ?? ""),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 70,
              left: 30,
              child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                  ))),
        ],
      ),
    );
  }
}
