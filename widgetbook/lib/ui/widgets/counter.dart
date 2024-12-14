import 'package:flutter/widgets.dart';
<<<<<<< HEAD
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ui.dart';

class Counter extends StatelessWidget {
  const Counter({
    super.key,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.of(context).background.secondary,
        borderRadius: BorderRadius.circular(AppTheme.of(context).radius.full),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: FontAwesomeIcons.minus,
            onPressed: onDecrement,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppTheme.of(context).spacing.xs,
              vertical: AppTheme.of(context).spacing.xxs,
            ),
            child: Text(
              value.toString(),
              style: AppTheme.of(context).typography.bodyMedium,
            ),
          ),
          IconButton(
            icon: FontAwesomeIcons.plus,
            onPressed: onIncrement,
          ),
        ],
      ),
    );
  }
=======
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Counter,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7284-8778&t=N6qwmLP7MP59ClWB-4',
)
Widget buildCounterCase(BuildContext context) {
  return Counter(
    value: context.knobs.int.input(label: 'value'),
    onIncrement: () {},
    onDecrement: () {},
  );
>>>>>>> 65584a9 (try)
}
