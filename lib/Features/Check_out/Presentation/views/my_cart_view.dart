// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/my_cart_view_body.dart';
import 'package:payment_checkout/core/utils/app_strings.dart';
import 'package:payment_checkout/core/widgets/custom_app_bar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: AppStrings.appBarTitle),
      body: MyCartViewBody(),
    );
  }
}
