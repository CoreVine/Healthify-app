import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/l10n.dart';
import '../../../../core/theming/app_colors.dart';
import '../cubit/auth_cubit.dart';
import '../widgets/custom_pin_submission.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              // Handle state changes here if needed
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 16.h),
                  Text(
                    S.of(context).checkYourEmail,
                    style: AppTextStyles.roboto24SemiBold(),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    S.of(context).weSentAnEmail,
                    style: AppTextStyles.roboto14Regular().copyWith(
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  CustomPinSubmissionWidget(
                    onChanged: (p0, p1) {},
                    verificationCode: cubit.code,
                  ),

                  SizedBox(height: 40.h),
                  /// Verify Button
                  CustomButton(
                    text: S.of(context).verify,
                    yPadding: 15.h,
                    bgColor: AppColors.main,
                    textStyle: AppTextStyles.poppins16Regular().copyWith(
                      color: AppColors.white
                    ),
                    onPressed: () => cubit.sendCode(),
                    width: double.infinity,
                  ),
                  SizedBox(height: 24.h),

                  /// Resend Text
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        // cubit.resendCode();
                      },
                      child: RichText(
                        text: TextSpan(
                          text: S.of(context).didntGetTheEmail,
                          style: AppTextStyles.roboto14Regular().copyWith(),
                          children: [
                            TextSpan(
                              text: S.of(context).resendCode,
                              style: AppTextStyles.roboto14Medium().copyWith(
                                color: AppColors.accent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
