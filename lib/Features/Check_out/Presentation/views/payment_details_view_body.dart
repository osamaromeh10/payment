import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/payment_methods_list_view.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/custom_credit_card.dart';
import 'package:payment_checkout/core/utils/app_router.dart';
import 'package:payment_checkout/core/utils/app_strings.dart';
import 'package:payment_checkout/core/widgets/custom_button.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoVlidateMode = AutovalidateMode.disabled;

  final bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: PaymentMethodsListView()),
          SliverToBoxAdapter(
            child: CustomCreditCard(
              formKey: formKey,
              autoValidateMode: AutovalidateMode.always,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
                child: CustomButton(
                  text: AppStrings.pay,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      GoRouter.of(context).push(AppRouter.thankyouView);
                      autoVlidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
