import 'package:flutter/material.dart';

import '../../../../core/helpers/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to the Home Screen! ${user?.firstName}',
        ),
      ),
    );
  }
}
