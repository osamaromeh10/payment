import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/app_styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.titleLarge, required this.value});
  final String titleLarge, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(titleLarge, style: AppStyles.style24semiBold),
        Spacer(),
        Text(value, style: AppStyles.style24semiBold),
      ],
    );
  }
}
