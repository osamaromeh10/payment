import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/app_colors.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: AppColors.backGroundAvatar,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: AppColors.checkIconColor,
        child: Icon(Icons.check, size: 40, color: AppColors.whiteColor),
      ),
    );
  }
}
