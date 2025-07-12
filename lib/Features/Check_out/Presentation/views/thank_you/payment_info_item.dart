import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/app_styles.dart';

class PaymentInfoItem extends StatelessWidget {
  const PaymentInfoItem({super.key, required this.text, required this.value});
  final String text, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: AppStyles.style18),
        Text(value, style: AppStyles.style18semiBold),
      ],
    );
  }
}
