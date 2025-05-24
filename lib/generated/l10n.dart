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

  /// `A concise overview of the importance of`
  String get a_concise_overview_of_the_importance_of {
    return Intl.message(
      'A concise overview of the importance of',
      name: 'a_concise_overview_of_the_importance_of',
      desc: '',
      args: [],
    );
  }

  /// `All this for you, for healthy life`
  String get all_this_for_you {
    return Intl.message(
      'All this for you, for healthy life',
      name: 'all_this_for_you',
      desc: '',
      args: [],
    );
  }

  /// `Calories`
  String get calories {
    return Intl.message('Calories', name: 'calories', desc: '', args: []);
  }

  /// `Carbs`
  String get carbs {
    return Intl.message('Carbs', name: 'carbs', desc: '', args: []);
  }

  /// `Categories`
  String get categories {
    return Intl.message('Categories', name: 'categories', desc: '', args: []);
  }

  /// `Fats`
  String get fats {
    return Intl.message('Fats', name: 'fats', desc: '', args: []);
  }

  /// `Fiber`
  String get fiber {
    return Intl.message('Fiber', name: 'fiber', desc: '', args: []);
  }

  /// `Food`
  String get food {
    return Intl.message('Food', name: 'food', desc: '', args: []);
  }

  /// `in a balanced diet.`
  String get in_a_balanced_diet {
    return Intl.message(
      'in a balanced diet.',
      name: 'in_a_balanced_diet',
      desc: '',
      args: [],
    );
  }

  /// `Items per 100g`
  String get items_per_100g {
    return Intl.message(
      'Items per 100g',
      name: 'items_per_100g',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Onboarding`
  String get onboarding {
    return Intl.message('Onboarding', name: 'onboarding', desc: '', args: []);
  }

  /// `Protein`
  String get protein {
    return Intl.message('Protein', name: 'protein', desc: '', args: []);
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `Vitamins`
  String get vitamins {
    return Intl.message('Vitamins', name: 'vitamins', desc: '', args: []);
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
