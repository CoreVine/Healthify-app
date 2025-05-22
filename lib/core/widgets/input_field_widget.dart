import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/core/theming/app_colors.dart';
import 'package:healthify_app/core/theming/app_text_styles.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    super.key,
    required this.textController,
    required this.labelText,
    this.isObscure,
    this.keyboardType,
    required this.validator,
    this.suffixIcon,
  });

  final TextEditingController textController;
  final String labelText;
  final bool? isObscure;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? Function(String? value) validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormField<String>(
          validator: validator,
          builder: (formFieldState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  child: TextFormField(
                    keyboardType: keyboardType,
                    obscureText: isObscure ?? false,
                    controller: textController,
                    decoration: InputDecoration(
                      hintText: labelText,
                      hintStyle: AppTextStyles.roboto14Regular().copyWith(
                        color: AppColors.text2,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 14),
                      suffixIcon: suffixIcon,
                    ),
                    onChanged: (val) => formFieldState.didChange(val),
                  ),
                ),
                if (formFieldState.hasError)
                  Padding(
                    padding: EdgeInsets.only(top: 6.h, left: 8.w),
                    child: Text(
                      formFieldState.errorText ?? '',
                      style: AppTextStyles.roboto14Regular().copyWith(
                        color: Colors.red,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}
