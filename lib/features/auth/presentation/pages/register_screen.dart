import 'package:flutter/material.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';
import 'package:healthify_app/core/widgets/input_field_widget.dart';
import 'package:healthify_app/generated/l10n.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InputFieldWidget(textController: TextEditingController()
            , labelText: "labelText", validator: (value){}),
      ),
    );
  }
}
