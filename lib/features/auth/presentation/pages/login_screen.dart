import 'package:flutter/material.dart';
import 'package:healthify_app/generated/l10n.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(S.of(context).welcome_message),
      ),
    );
  }
}
