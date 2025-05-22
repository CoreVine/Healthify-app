import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/theming/app_colors.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';
import 'package:healthify_app/core/utils/validation_utils.dart';
import 'package:healthify_app/core/widgets/custom_button.dart';
import 'package:healthify_app/features/auth/manager/data/models/login_response.dart';
import 'package:healthify_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:healthify_app/generated/l10n.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/input_field_widget.dart';
import '../widgets/remember_me_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var cubit = context.read<AuthCubit>();
      await cubit.checkBiometricAvailability();
      if (cubit.isBiometricAvailable) {
        await cubit.authenticateWithBiometrics();
      }
    });

    super.initState();
  }


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
                      if (state is LoginSuccessState) {
                        Navigator.pushReplacementNamed(
                            context, Routes.homeScreen);
                      } else if (state is LoginErrorState) {
                      }
                    },
                    builder: (context, state) {
                      return Form(
                        key: cubit.form,
                        child: Container(
                          constraints: BoxConstraints(minHeight: constraints.maxHeight),
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
                                  S
                                      .of(context)
                                      .logInToContinueYourHealthJourney,
                                  style: AppTextStyles.poppins16Regular(),
                                ),
                              ),
                              SizedBox(height: 24.h),
                              InputFieldWidget(
                                  textController: cubit.emailController,
                                  labelText: S.of(context).emailAddress,
                                  validator: (value) => ValidationUtils()
                                      .validateEmail(value)),
                              SizedBox(height: 24.h),
                              InputFieldWidget(
                                  textController:
                                      cubit.passwordController,
                                  labelText: S.of(context).password,
                                  validator: (value) => ValidationUtils()
                                      .validatePassword(value)),
                              SizedBox(height: 16.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RememberMeWidget(
                                      rememberMeClicked: cubit.rememberMe,
                                      onChanged:
                                          cubit.toggleRememberMe),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      S.of(context).forgotPassword,
                                      style: AppTextStyles.roboto12Bold()
                                          .copyWith(
                                              color: AppColors.accent),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 24.h),
                              CustomButton(
                                text: S.of(context).login,
                                onPressed: () {
                                  cubit.login(LoginRequest(
                                      cubit.emailController.text,
                                      cubit.passwordController.text));
                                },
                                bgColor: AppColors.main,
                                textStyle:
                                    AppTextStyles.poppins16Regular()
                                        .copyWith(color: Colors.white),
                                yPadding: 20.h,
                              ),
                              SizedBox(height: 20.h),
                              Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      S.of(context).dontHaveAnAccount,
                                      style:
                                          AppTextStyles.roboto12Regular(),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        S.of(context).registerNow,
                                        style:
                                            AppTextStyles.roboto12Bold()
                                                .copyWith(
                                                    color:
                                                        AppColors.accent),
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
