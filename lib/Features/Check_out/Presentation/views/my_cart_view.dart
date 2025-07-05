// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/my_cart_view_body.dart';
import 'package:payment_checkout/core/utils/app_images.dart';
import 'package:payment_checkout/core/utils/app_strings.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Center(child: SvgPicture.asset(AppImages.leadingIcon)),
        centerTitle: true,
        title: const Text(AppStrings.appBarTitle),
      ),
      body: MyCartViewBody(),
    );
  }
}
