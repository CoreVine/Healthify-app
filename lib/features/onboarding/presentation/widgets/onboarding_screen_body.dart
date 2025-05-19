import 'package:flutter/material.dart';
import 'package:healthify_app/core/helpers/extensions.dart';
import 'package:healthify_app/core/helpers/shared_pref_helper.dart';
import 'package:healthify_app/core/helpers/shared_prefs_keys.dart';
import 'package:healthify_app/core/routing/routes.dart';
import 'package:healthify_app/features/onboarding/presentation/widgets/dots_indicator.dart';
import 'package:healthify_app/features/onboarding/presentation/widgets/onboarding_item.dart';
import 'package:healthify_app/generated/l10n.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({
    super.key,
    required this.pages,
  });

  final List<Map<String, String>> pages;

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 8,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.pages.length,
            onPageChanged: (value) {
              setState(() {
                _currentPage = value;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingItem(
                imagePath: widget.pages[index]['imagePath']!,
                title: widget.pages[index]['title']!,
                description: widget.pages[index]['description']!,
                buttonText: _currentPage == widget.pages.length - 1
                    ? S.of(context).get_started
                    : S.of(context).next,
                onPressed: () {
                  if (_currentPage == widget.pages.length - 1) {
                    SharedPrefHelper.setData(
                        SharedPrefsKeys.hasPassedIntroKey, true);
                    context.pushReplacementNamed(Routes.loginScreen);
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
              );
            },
          ),
        ),
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.topCenter,
            child: DotsIndicator(
              numberOfPages: widget.pages.length,
              currentPage: _currentPage,
            ),
          ),
        ),
      ],
    );
  }
}
