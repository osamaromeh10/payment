import 'package:flutter/material.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/payment_details_view_body.dart';
import 'package:payment_checkout/core/utils/app_strings.dart';
import 'package:payment_checkout/core/widgets/custom_app_bar.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: AppStrings.paymentDetails),
      body: PaymentDetailsViewBody(),
    );
  }
}
