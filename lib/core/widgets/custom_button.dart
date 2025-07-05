import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/app_colors.dart';
import 'package:payment_checkout/core/utils/app_strings.dart';
import 'package:payment_checkout/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(AppStrings.completePayment, style: AppStyles.style22),
        ),
      ),
    );
  }
}
