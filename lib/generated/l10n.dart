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

  /// `Subscribe to Premium`
  String get subscribe_to_premium {
    return Intl.message(
      'Subscribe to Premium',
      name: 'subscribe_to_premium',
      desc: '',
      args: [],
    );
  }

  /// `Annual`
  String get annual {
    return Intl.message('Annual', name: 'annual', desc: '', args: []);
  }

  /// `Monthly`
  String get monthly {
    return Intl.message('Monthly', name: 'monthly', desc: '', args: []);
  }

  /// `Billed Monthly`
  String get billed_monthly {
    return Intl.message(
      'Billed Monthly',
      name: 'billed_monthly',
      desc: '',
      args: [],
    );
  }

  /// `Billed Annually`
  String get billed_annually {
    return Intl.message(
      'Billed Annually',
      name: 'billed_annually',
      desc: '',
      args: [],
    );
  }

  /// `Daily follow-up and support via WhatsApp or inside the app.`
  String get daily_followup_support {
    return Intl.message(
      'Daily follow-up and support via WhatsApp or inside the app.',
      name: 'daily_followup_support',
      desc: '',
      args: [],
    );
  }

  /// `Daily workout plans along with the diet.`
  String get daily_workout_plans {
    return Intl.message(
      'Daily workout plans along with the diet.',
      name: 'daily_workout_plans',
      desc: '',
      args: [],
    );
  }

  /// `Full personalized diet plan.`
  String get personalized_diet_plan {
    return Intl.message(
      'Full personalized diet plan.',
      name: 'personalized_diet_plan',
      desc: '',
      args: [],
    );
  }

  /// `{price} EGP/month`
  String monthly_price(Object price) {
    return Intl.message(
      '$price EGP/month',
      name: 'monthly_price',
      desc: '',
      args: [price],
    );
  }

  /// `{price} EGP/year`
  String annual_price(Object price) {
    return Intl.message(
      '$price EGP/year',
      name: 'annual_price',
      desc: '',
      args: [price],
    );
  }

  /// `{price} EGP instead of {original_price}`
  String annual_price_with_discount(Object price, Object original_price) {
    return Intl.message(
      '$price EGP instead of $original_price',
      name: 'annual_price_with_discount',
      desc: '',
      args: [price, original_price],
    );
  }

  /// `{price} EGP instead of {original_price}`
  String monthly_price_with_discount(Object price, Object original_price) {
    return Intl.message(
      '$price EGP instead of $original_price',
      name: 'monthly_price_with_discount',
      desc: '',
      args: [price, original_price],
    );
  }

  /// `SAVE {discount}%`
  String save_discount(Object discount) {
    return Intl.message(
      'SAVE $discount%',
      name: 'save_discount',
      desc: '',
      args: [discount],
    );
  }

  /// `Premium Plan`
  String get premium_plan {
    return Intl.message(
      'Premium Plan',
      name: 'premium_plan',
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
