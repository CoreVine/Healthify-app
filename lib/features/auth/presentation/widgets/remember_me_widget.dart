import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthify_app/features/auth/presentation/widgets/biometric_auth.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class RememberMeWidget extends StatelessWidget {
  bool rememberMeClicked;
  final Function onChanged;

  RememberMeWidget(
      {super.key, required this.rememberMeClicked, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox.adaptive(
            activeColor: AppColors.main,
            side: BorderSide(color: AppColors.main, width: 1.5.w),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            value: rememberMeClicked,
            onChanged: (value) {
              if (value!) {
                showDialog(context: context, builder: (context) => BiometricAuthDialogWidget(),);
                print(value);
              }
              onChanged();
            }),
        Text(
          S.of(context).rememberMe,
          style: AppTextStyles.roboto12Bold(),
        ),
      ],
    );
  }
}
