// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hiring_task_1/utils/app_colors.dart';

class Button extends StatelessWidget {
  final String btnName;
  final void Function() onTap;
  final bool isLoading;
  const Button({
    super.key,
    required this.btnName,
    required this.onTap,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.redColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: isLoading
                ? SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      valueColor:
                          AlwaysStoppedAnimation<Color>(AppColors.whiteColor),
                    ),
                  )
                : Text(btnName,
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontFamily: "urbanist",
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
          ),
        ),
      ),
    );
  }
}
