<<<<<<< HEAD
import 'package:flutter/material.dart' hide Icon;

import '../ui.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({
    super.key,
    required this.icon,
    required this.title,
    required this.message,
  });

  final IconData icon;
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    final spacing = AppTheme.of(context).spacing.sm;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          scale: 2,
        ),
        SizedBox(
          height: spacing,
        ),
        Text(
          title,
          style: AppTheme.of(context).typography.headingExtraLarge,
        ),
        SizedBox(
          height: spacing,
        ),
        Text(
          message,
          style: AppTheme.of(context).typography.bodyRegular,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
=======
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: EmptyState,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6809-5957&t=N6qwmLP7MP59ClWB-4',
)
Widget buildEmptyStateUseCase(BuildContext context) {
  return EmptyState(
    icon: FontAwesomeIcons.triangleExclamation,
    title: context.knobs.string(label: 'title', initialValue: 'Title'),
    message: context.knobs.string(
      label: 'message',
      initialValue: 'A message conveying the state of the product',
    ),
  );
>>>>>>> 65584a9 (try)
}
