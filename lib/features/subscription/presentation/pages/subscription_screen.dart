import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:healthify_app/core/helpers/extensions.dart';
import 'package:healthify_app/core/routing/routes.dart';
import 'package:healthify_app/core/theming/app_paddings.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';
import 'package:healthify_app/features/subscription/presentation/widgets/subscription_section.dart';

import 'package:healthify_app/generated/l10n.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPaddings.gap16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: AppPaddings.gap24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        // Handle back button press
                        context.pushNamed(Routes.homeScreen);
                      },
                    ),
                  ],
                ),
                SizedBox(height: AppPaddings.gap24.h),
                Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    S.of(context).subscribe_to_premium,
                    style: AppTextStyles.poppins24SemiBold(),
                  ),
                ),
                SizedBox(height: AppPaddings.gap24.h),
                SubscriptionSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
