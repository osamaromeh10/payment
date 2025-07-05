import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/app_styles.dart';

class OrderInfoItem extends StatelessWidget {
  final String title, value;
  const OrderInfoItem({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: AppStyles.style18),
        Spacer(),
        Text(value, style: AppStyles.style18),
      ],
    );
  }
}
