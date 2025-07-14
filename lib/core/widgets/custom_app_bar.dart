import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_checkout/core/utils/app_images.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    elevation: 0.0,
    leading: Center(child: SvgPicture.asset(AppImages.leadingIcon)),
    centerTitle: true,
    title: Text(title ?? ""),
  );
}
