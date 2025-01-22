import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hiring_task_1/utils/app_colors.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation(
      {super.key, required this.ontap, required this.currentIndex});
  final void Function(int) ontap;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: 70,
      width: mediaQuery.width,
      color: AppColors.whiteColor,
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(_iconLists.length, (index) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => ontap(index),
            child: SvgPicture.asset(
                currentIndex == index
                    ? _selectedIconLists[index]
                    : _iconLists[index],
                colorFilter: ColorFilter.mode(
                    currentIndex == index
                        ? AppColors.redColor
                        : AppColors.greyColor2,
                    BlendMode.srcIn),
                height: 30,
                width: 30),
          );
        }),
      ),
    );
  }
}

List<String> _iconLists = [
  "assets/icons/Vector.svg",
  "assets/icons/Work.svg",
  "assets/icons/Group.svg",
  "assets/icons/Group3.svg",
];
List<String> _selectedIconLists = [
  "assets/icons/Vector3.svg",
  "assets/icons/Work.svg",
  "assets/icons/Group.svg",
  "assets/icons/Profile.svg",
];
