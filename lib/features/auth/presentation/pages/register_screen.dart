import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/helpers/extensions.dart';
import 'package:healthify_app/core/helpers/measures.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';
import 'package:healthify_app/core/widgets/input_field_widget.dart';
import 'package:healthify_app/features/auth/manager/data/models/register_response.dart';
import 'package:healthify_app/generated/l10n.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/utils/validation_utils.dart';
import '../../../../core/widgets/custom_button.dart';
import '../cubit/auth_cubit.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 80.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70.w),
                    child: Center(
                      child: Image.asset(Assets.logoPng),
                    ),
                  ),
                  SizedBox(height: 60.h),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is RegisterSuccessState) {
                        Navigator.pushNamed(context, Routes.verifyCode,);
                      } else if (state is LoginErrorState) {}
                    },
                    builder: (context, state) {
                      return Form(
                        key: cubit.registerForm,
                        child: Container(
                          constraints:
                              BoxConstraints(minHeight: constraints.maxHeight),
                          decoration: BoxDecoration(
                            color: AppColors.gray,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24.r),
                              topRight: Radius.circular(24.r),
                            ),
                          ),
                          padding: EdgeInsets.all(16.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 24.h,
                              ),
                              Center(
                                child: Text(
                                  S.of(context).joinHealthifyMe,
                                  style: AppTextStyles.poppins16Regular(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(height: 24.h),
                              // First Name and Last Name Inputs
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: context.width * .42,
                                    child: InputFieldWidget(
                                        textController:
                                            cubit.firstNameController,
                                        labelText: S.of(context).firstName,
                                        validator: (value) => ValidationUtils()
                                            .validateName(value)),
                                  ),
                                  SizedBox(
                                    width: context.width * .42,
                                    child: InputFieldWidget(
                                        textController:
                                            cubit.lastNameController,
                                        labelText: S.of(context).lastName,
                                        validator: (value) => ValidationUtils()
                                            .validateName(value)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: AppMeasures.gap24,
                              ),
                              // Email Input
                              InputFieldWidget(
                                  textController: cubit.emailController,
                                  labelText: S.of(context).emailAddress,
                                  validator: (value) =>
                                      ValidationUtils().validateEmail(value)),
                              SizedBox(height: 24.h),
                              // Email Input
                              InputFieldWidget(
                                  textController: cubit.passwordController,
                                  labelText: S.of(context).password,
                                  isObscure: cubit.isPasswordObscure,
                                  suffixIcon: GestureDetector(
                                    onTap: cubit.changePasswordVisibility,
                                    child: Icon(cubit.isPasswordObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                                  validator: (value) => ValidationUtils()
                                      .validatePassword(value)),
                              SizedBox(height: 24.h),
                              // Confirm Password Input
                              InputFieldWidget(
                                  textController:
                                      cubit.confirmPasswordController,
                                  labelText: S.of(context).confirmPassword,
                                  isObscure: cubit.isConfirmPasswordObscure,
                                  suffixIcon: GestureDetector(
                                    onTap:
                                        cubit.changeConfirmPasswordVisibility,
                                    child: Icon(cubit.isConfirmPasswordObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                                  validator: (value) => ValidationUtils()
                                      .validateConfirmPassword(value,
                                          cubit.passwordController.text)),
                              SizedBox(
                                height: 16.h,
                              ),
                              buildCheckBox(context, cubit.isTermsAccepted,
                                  cubit.toggleTerms),
                              SizedBox(height: 48.h),
                              CustomButton(
                                text: S.of(context).createAccount,
                                onPressed: () {
                                  cubit.register(SignUpRequest(
                                      firstName: cubit.firstNameController.text,
                                      lastName: cubit.lastNameController.text,
                                      email: cubit.emailController.text,
                                      password: cubit.passwordController.text,
                                      passwordConfirmation: cubit
                                          .confirmPasswordController.text));
                                },
                                bgColor: AppColors.main,
                                textStyle: AppTextStyles.poppins16Regular()
                                    .copyWith(color: Colors.white),
                                yPadding: 20.h,
                              ),
                              SizedBox(height: 20.h),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      S.of(context).dontHaveAnAccount,
                                      style: AppTextStyles.roboto12Regular(),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        S.of(context).registerNow,
                                        style: AppTextStyles.roboto12Bold()
                                            .copyWith(color: AppColors.accent),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget buildCheckBox(
    BuildContext context, bool isAccepted, Function onChanged) {
  return Row(
    children: [
      Checkbox.adaptive(
          activeColor: AppColors.main,
          side: BorderSide(color: AppColors.main, width: 1.5.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
          value: isAccepted,
          onChanged: (value) {
            onChanged();
          }),
      Text(
        S.of(context).iAgreeToTerms,
        style: AppTextStyles.roboto12Regular(),
      ),
    ],
  );
}
