// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  static String m0(price) => "${price} جنيه/سنة";

  static String m1(price, original_price) =>
      "${price} جنيه بدلًا من ${original_price}";

  static String m2(price) => "${price} جنيه/شهر";

  static String m3(price, original_price) =>
      "${price} جنيه بدلًا من ${original_price}";

  static String m4(discount) => "وفّر ${discount}%";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "annual": MessageLookupByLibrary.simpleMessage("سنوي"),
    "annual_price": m0,
    "annual_price_with_discount": m1,
    "billed_annually": MessageLookupByLibrary.simpleMessage("يُحاسب سنويًا"),
    "billed_monthly": MessageLookupByLibrary.simpleMessage("يُحاسب شهريًا"),
    "daily_followup_support": MessageLookupByLibrary.simpleMessage(
      "متابعة يومية ودعم عبر واتساب أو داخل التطبيق.",
    ),
    "daily_workout_plans": MessageLookupByLibrary.simpleMessage(
      "خطط تمارين يومية مع النظام الغذائي.",
    ),
    "login": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "monthly": MessageLookupByLibrary.simpleMessage("شهري"),
    "monthly_price": m2,
    "monthly_price_with_discount": m3,
    "onboarding": MessageLookupByLibrary.simpleMessage("الترحيب والإعداد"),
    "personalized_diet_plan": MessageLookupByLibrary.simpleMessage(
      "نظام غذائي مخصص بالكامل.",
    ),
    "premium_plan": MessageLookupByLibrary.simpleMessage("الباقة المميزة"),
    "register": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
    "save_discount": m4,
    "subscribe_to_premium": MessageLookupByLibrary.simpleMessage(
      "اشترك في الباقة المميزة",
    ),
    "welcome_message": MessageLookupByLibrary.simpleMessage(
      "مرحبًا بك في Healthify!",
    ),
  };
}
