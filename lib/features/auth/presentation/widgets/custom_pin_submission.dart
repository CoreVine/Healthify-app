

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/app_text_styles.dart';
import '../../../../../../core/utils/validation_utils.dart';
import 'custom_pin_form_field.dart';

class CustomPinSubmissionWidget extends StatefulWidget {
  final List<String?> verificationCode;
  final void Function(int, String?) onChanged;

  const CustomPinSubmissionWidget({
    super.key,
    required this.verificationCode,
    required this.onChanged,
  });

  @override
  _CustomPinSubmissionWidgetState createState() =>
      _CustomPinSubmissionWidgetState();
}

class _CustomPinSubmissionWidgetState extends State<CustomPinSubmissionWidget> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers; // List of controllers

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(5, (index) => FocusNode());
    _controllers = List.generate(
        5, (index) => TextEditingController()); // Initialize controllers
  }

  // @override
  // void dispose() {
  //   // Dispose focus nodes and controllers
  //   for (var node in _focusNodes) {
  //     node.dispose();
  //   }
  //   // for (var controller in _controllers) {
  //   //   controller.dispose();
  //   // }
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(5, (index) {
          return PinFormField(
            hintText: " ",
            width: 50.w,
            height: 50.w,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            controller: _controllers[index],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: AppTextStyles.roboto18Medium(),
            onChanged: (value) {
              if (value.isNotEmpty && index < 4) {
                _focusNodes[index + 1].requestFocus();
              } else if (value.isEmpty && index > 0) {
                _focusNodes[index - 1].requestFocus();
              }
              widget.verificationCode[index] = value;
            },
            validator: (value) => ValidationUtils().validateFiveDigitCode(value),
            focusNode: _focusNodes[index],
          );
        }),
      ),
    );
  }
}
