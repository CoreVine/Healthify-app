import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_font_families.dart';
import 'app_font_weights.dart';
import 'app_text_size.dart';

class AppTextStyles {
  static Color textColor = AppColors.text1;

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

  // Roboto Styles
  static TextStyle roboto10Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize10,
  );

  static TextStyle roboto10Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize10,
  );

  static TextStyle roboto10SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize10,
  );

  static TextStyle roboto10Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize10,
  );

  static TextStyle roboto12Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize12,
  );

  static TextStyle roboto12Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize12,
  );

  static TextStyle roboto12SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize12,
  );

  static TextStyle roboto12Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize12,
  );

  static TextStyle roboto14Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize14,
  );

  static TextStyle roboto14Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize14,
  );

  static TextStyle roboto14SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize14,
  );

  static TextStyle roboto14Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize14,
  );

  static TextStyle roboto16Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize16,
  );

  static TextStyle roboto16Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize16,
  );

  static TextStyle roboto16SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize16,
  );

  static TextStyle roboto16Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize16,
  );

  static TextStyle roboto18Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize18,
  );

  static TextStyle roboto18Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize18,
  );

  static TextStyle roboto18SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize18,
  );

  static TextStyle roboto18Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize18,
  );

  static TextStyle roboto20Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize20,
  );

  static TextStyle roboto20Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize20,
  );

  static TextStyle roboto20SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize20,
  );

  static TextStyle roboto20Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize20,
  );

  static TextStyle roboto24Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize24,
  );

  static TextStyle roboto24Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize24,
  );

  static TextStyle roboto24SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize24,
  );

  static TextStyle roboto24Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize24,
  );

  // Poppins Styles
  static TextStyle poppins10Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize10,
  );

  static TextStyle poppins10Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize10,
  );

  static TextStyle poppins10SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize10,
  );

  static TextStyle poppins10Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize10,
  );

  static TextStyle poppins12Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize12,
  );

  static TextStyle poppins12Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize12,
  );

  static TextStyle poppins12SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize12,
  );

  static TextStyle poppins12Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize12,
  );

  static TextStyle poppins14Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize14,
  );

  static TextStyle poppins14Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize14,
  );

  static TextStyle poppins14SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize14,
  );

  static TextStyle poppins14Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize14,
  );

  static TextStyle poppins16Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize16,
  );

  static TextStyle poppins16Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize16,
  );

  static TextStyle poppins16SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize16,
  );

  static TextStyle poppins16Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize16,
  );

  static TextStyle poppins18Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize18,
  );

  static TextStyle poppins18Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize18,
  );

  static TextStyle poppins18SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize18,
  );

  static TextStyle poppins18Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize18,
  );

  static TextStyle poppins20Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize20,
  );

  static TextStyle poppins20Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize20,
  );

  static TextStyle poppins20SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize20,
  );

  static TextStyle poppins20Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize20,
  );

  static TextStyle poppins24Regular() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize24,
  );

  static TextStyle poppins24Medium() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize24,
  );

  static TextStyle poppins24SemiBold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize24,
  );

  static TextStyle poppins24Bold() => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize24,
  );
}
