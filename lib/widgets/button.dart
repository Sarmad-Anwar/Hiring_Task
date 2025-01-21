// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hiring_task_1/utils/app_colors.dart';

class Button extends StatelessWidget {
  final String btnName;
  final void Function() onTap;
  const Button({
    super.key,
    required this.btnName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.mehroonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Text(btnName,
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontFamily: "montserrat",
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
          ),
        ),
      ),
    );
  }
}
