// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(price) => "${price} EGP/year";

  static String m1(price, original_price) =>
      "${price} EGP instead of ${original_price}";

  static String m2(price) => "${price} EGP/month";

  static String m3(price, original_price) =>
      "${price} EGP instead of ${original_price}";

  static String m4(discount) => "SAVE ${discount}%";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "annual": MessageLookupByLibrary.simpleMessage("Annual"),
    "annual_price": m0,
    "annual_price_with_discount": m1,
    "billed_annually": MessageLookupByLibrary.simpleMessage("Billed Annually"),
    "billed_monthly": MessageLookupByLibrary.simpleMessage("Billed Monthly"),
    "daily_followup_support": MessageLookupByLibrary.simpleMessage(
      "Daily follow-up and support via WhatsApp or inside the app.",
    ),
    "daily_workout_plans": MessageLookupByLibrary.simpleMessage(
      "Daily workout plans along with the diet.",
    ),
    "login": MessageLookupByLibrary.simpleMessage("Login"),
    "monthly": MessageLookupByLibrary.simpleMessage("Monthly"),
    "monthly_price": m2,
    "monthly_price_with_discount": m3,
    "onboarding": MessageLookupByLibrary.simpleMessage("Onboarding"),
    "personalized_diet_plan": MessageLookupByLibrary.simpleMessage(
      "Full personalized diet plan.",
    ),
    "premium_plan": MessageLookupByLibrary.simpleMessage("Premium Plan"),
    "register": MessageLookupByLibrary.simpleMessage("Register"),
    "save_discount": m4,
    "subscribe_to_premium": MessageLookupByLibrary.simpleMessage(
      "Subscribe to Premium",
    ),
    "welcome_message": MessageLookupByLibrary.simpleMessage(
      "Welcome to Healthify!",
    ),
  };
}
