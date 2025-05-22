import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/helpers/measures.dart';
import 'package:healthify_app/core/theming/app_colors.dart';
import 'package:healthify_app/core/widgets/custom_drop_down.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class StepsScreen extends StatefulWidget {
  final String title;
  final String subTitle;
  final Widget currentWidget;

  const StepsScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.currentWidget,
  });

  @override
  State<StepsScreen> createState() => _StepsScreenState();
}

class _StepsScreenState extends State<StepsScreen> {
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppMeasures.padding12, vertical: AppMeasures.padding16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          Center(
            child: Text(
              widget.title,
              style: AppTextStyles.poppins24SemiBold(),
            ),
          ),
          SizedBox(height: AppMeasures.padding8),
          Center(
            child: Text(
              widget.subTitle,
              style: AppTextStyles.roboto14Regular(),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: AppMeasures.gap24),
          widget.currentWidget,
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
