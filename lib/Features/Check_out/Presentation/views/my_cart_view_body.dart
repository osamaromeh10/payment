// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_checkout/core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Center(child: SvgPicture.asset(AppImages.leadingIcon)),
        centerTitle: true,
        title: const Text(AppStrings.appBarTitle),
      ),
      body: Column(
        children: [
          const SizedBox(height: 18),
          Center(
            child: Image.asset(AppImages.basketProduct, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
