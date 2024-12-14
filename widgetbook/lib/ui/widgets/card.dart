<<<<<<< HEAD
import 'package:flutter/material.dart';

import '../ui.dart';

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.of(context).background.primary,
        borderRadius: BorderRadius.circular(
          AppTheme.of(context).radius.sm,
        ),
        border: Border.all(
          color: AppTheme.of(context).border.color,
        ),
      ),
      child: child,
    );
  }
=======
import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Card,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7340-24498&t=N6qwmLP7MP59ClWB-4',
)
Widget buildCardUseCase(BuildContext context) {
  return const Card(
    child: Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        'This is some text',
      ),
    ),
  );
>>>>>>> 65584a9 (try)
}
