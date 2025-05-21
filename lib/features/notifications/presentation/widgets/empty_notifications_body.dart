import 'package:flutter/material.dart';
import 'package:healthify_app/core/constants/app_assets.dart';

class EmptyNotificationsBody extends StatelessWidget {
  const EmptyNotificationsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(Assets.emptyImage));
  }
}
