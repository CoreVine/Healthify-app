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

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "bioMetricAuthEnabled": MessageLookupByLibrary.simpleMessage(
      "Biometric Authentication Enabled",
    ),
    "dontHaveAnAccount": MessageLookupByLibrary.simpleMessage(
      "Don\'t have an account? ",
    ),
    "emailAddress": MessageLookupByLibrary.simpleMessage("Email address"),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("Forgot Password?"),
    "gotIt": MessageLookupByLibrary.simpleMessage("Got it"),
    "logInToContinueYourHealthJourney": MessageLookupByLibrary.simpleMessage(
      "Log in to continue your health journey",
    ),
    "login": MessageLookupByLibrary.simpleMessage("Login"),
    "nextTimeYouLogin": MessageLookupByLibrary.simpleMessage(
      "Next time you login, you can use your fingerprint or face ID to access your account.",
    ),
    "onboarding": MessageLookupByLibrary.simpleMessage("Onboarding"),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "register": MessageLookupByLibrary.simpleMessage("Register"),
    "registerNow": MessageLookupByLibrary.simpleMessage("Register Now"),
    "rememberMe": MessageLookupByLibrary.simpleMessage("Remember me"),
    "welcome_message": MessageLookupByLibrary.simpleMessage(
      "Welcome to Healthify!",
    ),
  };
}
