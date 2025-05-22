// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to Healthify!`
  String get welcome_message {
    return Intl.message(
      'Welcome to Healthify!',
      name: 'welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `Onboarding`
  String get onboarding {
    return Intl.message('Onboarding', name: 'onboarding', desc: '', args: []);
  }

  /// `Log in to continue your health journey`
  String get logInToContinueYourHealthJourney {
    return Intl.message(
      'Log in to continue your health journey',
      name: 'logInToContinueYourHealthJourney',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get emailAddress {
    return Intl.message(
      'Email address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get dontHaveAnAccount {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register Now`
  String get registerNow {
    return Intl.message(
      'Register Now',
      name: 'registerNow',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message('Remember me', name: 'rememberMe', desc: '', args: []);
  }

  /// `Next time you login, you can use your fingerprint or face ID to access your account.`
  String get nextTimeYouLogin {
    return Intl.message(
      'Next time you login, you can use your fingerprint or face ID to access your account.',
      name: 'nextTimeYouLogin',
      desc: '',
      args: [],
    );
  }

  /// `Got it`
  String get gotIt {
    return Intl.message('Got it', name: 'gotIt', desc: '', args: []);
  }

  /// `Biometric Authentication Enabled`
  String get bioMetricAuthEnabled {
    return Intl.message(
      'Biometric Authentication Enabled',
      name: 'bioMetricAuthEnabled',
      desc: '',
      args: [],
    );
  }

  /// `Join HealthifyMe and start your journey to a healthier life alue`
  String get joinHealthifyMe {
    return Intl.message(
      'Join HealthifyMe and start your journey to a healthier life alue',
      name: 'joinHealthifyMe',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message('First Name', name: 'firstName', desc: '', args: []);
  }

  /// `Last Name`
  String get lastName {
    return Intl.message('Last Name', name: 'lastName', desc: '', args: []);
  }

  /// `I agree to the Terms of Service and Privacy Policy.`
  String get iAgreeToTerms {
    return Intl.message(
      'I agree to the Terms of Service and Privacy Policy.',
      name: 'iAgreeToTerms',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message('Verify', name: 'verify', desc: '', args: []);
  }

  /// `Didn't get the email? `
  String get didntGetTheEmail {
    return Intl.message(
      'Didn\'t get the email? ',
      name: 'didntGetTheEmail',
      desc: '',
      args: [],
    );
  }

  /// `Resend code`
  String get resendCode {
    return Intl.message('Resend code', name: 'resendCode', desc: '', args: []);
  }

  /// `Check your email`
  String get checkYourEmail {
    return Intl.message(
      'Check your email',
      name: 'checkYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `We sent you an email with a verification code, please enter the 5 digit code that mentioned in the email`
  String get weSentAnEmail {
    return Intl.message(
      'We sent you an email with a verification code, please enter the 5 digit code that mentioned in the email',
      name: 'weSentAnEmail',
      desc: '',
      args: [],
    );
  }

  /// `Where are you from?`
  String get whereAreYouFrom {
    return Intl.message(
      'Where are you from?',
      name: 'whereAreYouFrom',
      desc: '',
      args: [],
    );
  }

  /// `This will help us personalize the app for you `
  String get thisWillHelpUsPersonalizeTheAppForYou {
    return Intl.message(
      'This will help us personalize the app for you ',
      name: 'thisWillHelpUsPersonalizeTheAppForYou',
      desc: '',
      args: [],
    );
  }

  /// `What’s your gender`
  String get whatsYourGender {
    return Intl.message(
      'What’s your gender',
      name: 'whatsYourGender',
      desc: '',
      args: [],
    );
  }

  /// `Just answer a few quick questions so we can tailor your diet and calculate your daily health goals.`
  String get justAnswerFewQuestions {
    return Intl.message(
      'Just answer a few quick questions so we can tailor your diet and calculate your daily health goals.',
      name: 'justAnswerFewQuestions',
      desc: '',
      args: [],
    );
  }

  /// `What’s your age?`
  String get whatsYourAge {
    return Intl.message(
      'What’s your age?',
      name: 'whatsYourAge',
      desc: '',
      args: [],
    );
  }

  /// `What’s your height?`
  String get whatsYourHeight {
    return Intl.message(
      'What’s your height?',
      name: 'whatsYourHeight',
      desc: '',
      args: [],
    );
  }

  /// `What’s your current weight?`
  String get whatsYourCurrentWeight {
    return Intl.message(
      'What’s your current weight?',
      name: 'whatsYourCurrentWeight',
      desc: '',
      args: [],
    );
  }

  /// `What’s your goal weight?`
  String get whatsYourGoalWeight {
    return Intl.message(
      'What’s your goal weight?',
      name: 'whatsYourGoalWeight',
      desc: '',
      args: [],
    );
  }

  /// `What’s your active level?`
  String get whatsYourActiveLevel {
    return Intl.message(
      'What’s your active level?',
      name: 'whatsYourActiveLevel',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
