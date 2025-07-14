import 'package:flutter/material.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/thank_you/thank_you_view_body.dart';
import 'package:payment_checkout/core/widgets/custom_app_bar.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Transform.translate(
        offset: Offset(0, -16),
        child: ThankYouViewBody(),
      ),
    );
  }
}
