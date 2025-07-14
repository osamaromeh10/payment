import 'package:flutter/material.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/thank_you/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.translate(
        offset: Offset(0, 0),
        child: ThankYouViewBody(),
      ),
    );
  }
}
