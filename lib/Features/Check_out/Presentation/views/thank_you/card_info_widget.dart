import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_checkout/core/utils/app_colors.dart';
import 'package:payment_checkout/core/utils/app_images.dart';
import 'package:payment_checkout/core/utils/app_strings.dart';
import 'package:payment_checkout/core/utils/app_styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 22),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(AppImages.masterCard),
          SizedBox(width: 23),
          Text.rich(
            TextSpan(
              style: AppStyles.style18,
              children: [
                TextSpan(text: AppStrings.creditCard),
                TextSpan(
                  text: AppStrings.masterNumber,
                  style: AppStyles.style18.copyWith(color: AppColors.grayColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
