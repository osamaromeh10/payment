import 'package:flutter/material.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/payment_method_item.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});
  final bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [PaymentMethodItem(isActive: false)]),
    );
  }
}
