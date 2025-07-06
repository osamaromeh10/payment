import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_checkout/core/utils/app_colors.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.isActive,
    required this.image,
  });
  final bool isActive;

  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      height: 62,
      width: 103,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(15)),
          side: BorderSide(
            width: 1.50,
            color: isActive ? AppColors.buttonColor : AppColors.grayColor,
          ),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? AppColors.buttonColor : AppColors.whiteColor,
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Center(child: SvgPicture.asset(image)),
      ),
    );
  }
}
