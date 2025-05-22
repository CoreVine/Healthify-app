import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/features/auth/presentation/cubit/auth_cubit.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/custom_drop_down.dart';
import '../../../../generated/l10n.dart';
import '../widgets/steps_screen.dart';

class DietDataScreen extends StatefulWidget {
  const DietDataScreen({super.key});

  @override
  State<DietDataScreen> createState() => _DietDataScreenState();
}

class _DietDataScreenState extends State<DietDataScreen> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is CloseDietPlanState) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.h, left: 24.w, right: 24.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: cubit.goToPreviousPage,
                      ),
                      TextButton(
                        onPressed: cubit.goToNextPage,
                        child: Text(
                          'Step ${cubit.currentPage}',
                          style: AppTextStyles.roboto14Regular(),
                        ),
                      ),
                    ],
                  ),
                ),

                /// Page content
                Expanded(
                  child: PageView(
                    controller: cubit.pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      StepsScreen(
                        title: S.of(context).whereAreYouFrom,
                        subTitle:
                            S.of(context).thisWillHelpUsPersonalizeTheAppForYou,
                        currentWidget: CustomDropdown<String>(
                          backgroundColor: AppColors.background,
                          borderWidth: 0.1,
                          items: [
                            DropdownItem<String>(value: 'eg', label: 'Egypt'),
                            DropdownItem<String>(
                                value: 'us', label: 'United States'),
                            DropdownItem<String>(
                                value: 'uk', label: 'United Kingdom'),
                            DropdownItem<String>(value: 'ca', label: 'Canada'),
                            DropdownItem<String>(
                                value: 'au', label: 'Australia'),
                            DropdownItem<String>(value: 'de', label: 'Germany'),
                          ],
                          selectedValue: "Eg",
                          hint: 'Select a country',
                          onChanged: (value) {},
                        ),
                      ),
                      StepsScreen(
                        title: S.of(context).whatsYourGender,
                        subTitle: S.of(context).justAnswerFewQuestions,
                        currentWidget: SizedBox(),
                      ),
                      StepsScreen(
                        title: S.of(context).whatsYourActiveLevel,
                        subTitle: S.of(context).justAnswerFewQuestions,
                        currentWidget: SizedBox(),
                      ),
                      StepsScreen(
                        title: S.of(context).whatsYourAge,
                        subTitle: S.of(context).justAnswerFewQuestions,
                        currentWidget: SizedBox(),
                      ),
                      StepsScreen(
                        title: S.of(context).whatsYourHeight,
                        subTitle: S.of(context).justAnswerFewQuestions,
                        currentWidget: SizedBox(),
                      ),
                      StepsScreen(
                        title: S.of(context).whatsYourCurrentWeight,
                        subTitle: S.of(context).justAnswerFewQuestions,
                        currentWidget: SizedBox(),
                      ),
                      StepsScreen(
                        title: S.of(context).whatsYourGender,
                        subTitle: S.of(context).justAnswerFewQuestions,
                        currentWidget: SizedBox(),
                      ),
                      StepsScreen(
                        title: S.of(context).whatsYourGoalWeight,
                        subTitle: S.of(context).justAnswerFewQuestions,
                        currentWidget: SizedBox(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
