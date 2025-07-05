import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_font_edits.dart';

abstract class AppStyles {
  static const TextStyle style18 = TextStyle(
    fontSize: AppSizes.size18,
    fontWeight: AppWeights.regular400,
    color: AppColors.blackColor,
    
  );
  static const TextStyle style18semiBold = TextStyle(
      fontSize: AppSizes.size18,
      fontWeight: AppWeights.semiBold600,
      color: AppColors.blackColor);
  static const TextStyle style20 = TextStyle(
      fontSize: AppSizes.size20,
      fontWeight: AppWeights.regular400,
      color: AppColors.blackColor);
  static const TextStyle style22 = TextStyle(
      fontSize: AppSizes.size22,
      fontWeight: AppWeights.medium500,
      color: AppColors.blackColor);
  static const TextStyle style25 = TextStyle(
      fontSize: AppSizes.size25,
      fontWeight: AppWeights.medium500,
      color: AppColors.blackColor);

  static const TextStyle style24semiBold = TextStyle(
      fontSize: AppSizes.size24,
      fontWeight: AppWeights.semiBold600,
      color: AppColors.blackColor);
}
