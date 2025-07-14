import 'package:flutter/material.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/payment_methods_list_view.dart';
import 'package:payment_checkout/core/utils/app_strings.dart';
import 'package:payment_checkout/core/widgets/custom_button.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 16),
          PaymentMethodsListView(),
          SizedBox(height: 32),
          CustomButton(onTap: () {}, text: AppStrings.continueText),
        ],
      ),
    );
  }
}
