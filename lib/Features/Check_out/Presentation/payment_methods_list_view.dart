import 'package:flutter/material.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/payment_method_item.dart';
import 'package:payment_checkout/core/utils/app_images.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

int activeIndex = 0;

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodsItems = const [
    AppImages.creditCard,
    AppImages.paypal,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodsItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              onTap: () {
                activeIndex = index;

                setState(() {});
              },
              child: PaymentMethodItem(
                isActive: activeIndex == index,
                image: paymentMethodsItems[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
