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

  /// `Get Started`
  String get get_started {
    return Intl.message('Get Started', name: 'get_started', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Onboarding`
  String get onboarding {
    return Intl.message('Onboarding', name: 'onboarding', desc: '', args: []);
  }

  /// `Whether you're looking to lose weight, eat better, or move more—we’ll build a plan that fits your lifestyle. All you need to do is start.`
  String get onboarding_subtitle_1 {
    return Intl.message(
      'Whether you\'re looking to lose weight, eat better, or move more—we’ll build a plan that fits your lifestyle. All you need to do is start.',
      name: 'onboarding_subtitle_1',
      desc: '',
      args: [],
    );
  }

  /// `From steps to weight changes, track what counts. Stay focused, feel proud, and keep moving toward your goals—one day at a time.`
  String get onboarding_subtitle_2 {
    return Intl.message(
      'From steps to weight changes, track what counts. Stay focused, feel proud, and keep moving toward your goals—one day at a time.',
      name: 'onboarding_subtitle_2',
      desc: '',
      args: [],
    );
  }

  /// `Get meal plans, tips, and insights tailored to your goals and habits. Built by experts. Backed by data. Designed for real life.`
  String get onboarding_subtitle_3 {
    return Intl.message(
      'Get meal plans, tips, and insights tailored to your goals and habits. Built by experts. Backed by data. Designed for real life.',
      name: 'onboarding_subtitle_3',
      desc: '',
      args: [],
    );
  }

  /// `Your Health, Your Way`
  String get onboarding_title_1 {
    return Intl.message(
      'Your Health, Your Way',
      name: 'onboarding_title_1',
      desc: '',
      args: [],
    );
  }

  /// `See Your Progress Come to Life`
  String get onboarding_title_2 {
    return Intl.message(
      'See Your Progress Come to Life',
      name: 'onboarding_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Smarter Plans. Healthier You.`
  String get onboarding_title_3 {
    return Intl.message(
      'Smarter Plans. Healthier You.',
      name: 'onboarding_title_3',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
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
