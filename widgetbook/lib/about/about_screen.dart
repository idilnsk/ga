<<<<<<< HEAD
import 'package:flutter/material.dart';

import '../ui/ui.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'logo.png',
            package: 'assets',
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: AppTheme.of(context).spacing.m,
          ),
          Text(
            'Created by Widgetbook',
            style: AppTheme.of(context).typography.label,
          ),
        ],
      ),
    );
  }
=======
import 'package:flutter/widgets.dart';
import 'package:groceries_app/about/about_screen.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AboutScreen,
)
Widget buildAboutScreenUseCase(BuildContext context) {
  // This use-case demonstrates how assets are loaded in
  // both app package and widgetbook package simultaneously.
  return const AboutScreen();
>>>>>>> 65584a9 (try)
}
