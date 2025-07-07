// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/cart_order_info_item.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/total_price.dart';
import 'package:payment_checkout/core/utils/app_colors.dart';
import 'package:payment_checkout/core/utils/app_images.dart';
import 'package:payment_checkout/core/utils/app_router.dart';
import 'package:payment_checkout/core/utils/app_strings.dart';
import 'package:payment_checkout/core/widgets/custom_button.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 14),
            Center(
              child: Expanded(
                child: Image.asset(AppImages.basketProduct, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 15),
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
            Divider(
              height: 24, // 12 on the Top and 12 // on the down
              thickness: 2,
              color: AppColors.dividerColor,
            ),
            TotalPrice(
              titleLarge: AppStrings.total,
              value: AppStrings.valueTotal,
            ),
            SizedBox(height: 7),
            CustomButton(
              text: AppStrings.completePayment,
              onTap: () {
                GoRouter.of(context).push(AppRouter.paymentDeatils);
              },
            ),
            SizedBox(height: 2),
          ],
        ),
      ),
    );
  }
}
