import 'package:flutter/material.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/thank_you/custom_check_icon.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/thank_you/custom_dashed_line.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/thank_you/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40.0,
        right: 25,
        left: 25,
        bottom: 25,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouCard(),
          Positioned(left: 0, right: 0, top: -50, child: CustomCheckIcon()),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            left: -20,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            right: -20,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2 + 20,
            left: 20 + 8,
            right: 20 + 8,

            child: CustomDashedLine(),
          ),
        ],
      ),
    );
  }
}
