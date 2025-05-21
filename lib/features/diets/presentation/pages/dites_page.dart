import 'package:flutter/material.dart';
import 'package:healthify_app/core/helpers/measures.dart';
import 'package:healthify_app/features/diets/presentation/widgets/diets_page_body.dart';
import 'package:healthify_app/generated/l10n.dart';

class DitesPage extends StatelessWidget {
  const DitesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).diets),
        centerTitle: true,
      ),
      body: Padding(
        padding: AppMeasures.symmetricPadding(horizontal: 16.0),
        child: DietsPageBody(),
      ),
    );
  }
}
