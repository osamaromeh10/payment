// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/app_images.dart';
import 'package:payment_checkout/core/utils/app_strings.dart';
import 'package:payment_checkout/core/utils/app_styles.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 18),
            Center(
              child: Image.asset(AppImages.basketProduct, fit: BoxFit.cover),
            ),
            SizedBox(height: 25),
            OrderInfoItem(
              title: AppStrings.orderSubtotal,
              value: AppStrings.valueOne,
            ),
            SizedBox(height: 3),
            OrderInfoItem(
              title: AppStrings.discount,
              value: AppStrings.valueTwo,
            ),
            SizedBox(height: 3),
            OrderInfoItem(
              title: AppStrings.shiping,
              value: AppStrings.valueThree,
            ),
          ],
        ),
      ),
    );
  }
}

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
