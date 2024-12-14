<<<<<<< HEAD
import 'package:flutter/widgets.dart' hide Icon;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ui.dart';

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppTheme.of(context).spacing.xs,
        horizontal: AppTheme.of(context).spacing.sm,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTheme.of(context).typography.subheadingLarge,
          ),
          SizedBox(
            width: AppTheme.of(context).spacing.xs,
          ),
          const Icon(FontAwesomeIcons.bell),
        ],
      ),
    );
  }
=======
import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AppBar,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7271-82082&t=N6qwmLP7MP59ClWB-4',
)
Widget buildAppBarUseCase(BuildContext context) {
  return AppBar(
    title: context.knobs.string(
      label: 'title',
      initialValue: 'Title',
    ),
  );
>>>>>>> 65584a9 (try)
}
