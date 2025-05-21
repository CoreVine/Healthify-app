import 'package:flutter/material.dart';
import 'package:healthify_app/features/notifications/presentation/widgets/notifications_screen_body.dart';
import 'package:healthify_app/generated/l10n.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).notifications)),
      body: NotificationsScreenBody(),
    );
  }
}
