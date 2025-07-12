import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/thank_you/card_info_widget.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/thank_you/payment_info_item.dart';
import 'package:payment_checkout/Features/Check_out/Presentation/views/total_price.dart';
import 'package:payment_checkout/core/utils/app_colors.dart';
import 'package:payment_checkout/core/utils/app_strings.dart';
import 'package:payment_checkout/core/utils/app_styles.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xffEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 50 + 16, left: 22, right: 22),

        child: Column(
          children: [
            Text(AppStrings.thankYou, style: AppStyles.style25),
            Text(AppStrings.messageSuccess, style: AppStyles.style20),
            SizedBox(height: 42),
            PaymentInfoItem(text: AppStrings.date, value: AppStrings.dateValue),
            SizedBox(height: 20),
            PaymentInfoItem(text: AppStrings.time, value: AppStrings.timeValue),
            SizedBox(height: 20),
            PaymentInfoItem(text: AppStrings.to, value: AppStrings.samLouis),
            Divider(height: 60, thickness: 2),
            TotalPrice(
              titleLarge: AppStrings.total,
              value: AppStrings.valueTotal,
            ),
            SizedBox(height: 30),
            CardInfoWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.barcode, size: 64),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(width: 1.5, color: AppColors.paidColor),
                    ),
                  ),

                  child: Center(
                    child: Text(
                      AppStrings.paid,
                      style: AppStyles.style24semiBold.copyWith(
                        color: AppColors.paidColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: ((MediaQuery.of(context).size.height * .2 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
