import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_font_families.dart';
import 'app_font_weights.dart';
import 'app_text_size.dart';



class AppTextStyles {
  static Color textColor = AppColors.text1; // Assuming you still need AppColors

  // Base style to reuse common properties
  static TextStyle baseStyle({
    required String fontFamily,
    required FontWeight fontWeight,
    required double fontSize,
    FontStyle? fontStyle,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontStyle: fontStyle,
    );
  }

  // Examples of text styles for Poppins
  static final TextStyle poppinsRegular16 = baseStyle(
    fontFamily: 'Poppins',
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize16,
  );

  static final TextStyle poppinsBold24 = baseStyle(
    fontFamily: 'Poppins',
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize24,
  );

  // Examples of text styles for Roboto
  static final TextStyle robotoMedium18 = baseStyle(
    fontFamily: 'Roboto',
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize18,
  );

  static final TextStyle robotoLight14 = baseStyle(
    fontFamily: 'Roboto',
    fontWeight: AppFontWeights.fontWeightLight,
    fontSize: AppTextSizes.fontSize14,
  );
}

