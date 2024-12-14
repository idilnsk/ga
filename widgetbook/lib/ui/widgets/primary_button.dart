<<<<<<< HEAD
import 'package:flutter/material.dart';

import '../ui.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.content,
    this.leading,
    this.trailing,
  });

  final String content;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppTheme.of(context).spacing.sm,
        horizontal: AppTheme.of(context).spacing.l,
      ),
      decoration: BoxDecoration(
        color: AppTheme.of(context).background.brand,
        borderRadius: BorderRadius.circular(
          AppTheme.of(context).radius.full,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leading != null)
            Row(
              children: [
                leading!,
                SizedBox(
                  width: AppTheme.of(context).spacing.xs,
                ),
              ],
            ),
          Text(
            content,
            style: AppTheme.of(context).typography.label.copyWith(
                  color: AppTheme.of(context).text.inverse,
                ),
          ),
          if (trailing != null)
            Row(
              children: [
                SizedBox(
                  width: AppTheme.of(context).spacing.xs,
                ),
                trailing!,
              ],
            ),
        ],
      ),
    );
  }
=======
// ignore_for_file: unused_import

import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: PrimaryButton,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7235-4663&t=N6qwmLP7MP59ClWB-4',
)
Widget buildPrimaryButtonCase(BuildContext context) {
  return PrimaryButton(
    content: context.knobs.string(label: 'content', initialValue: 'Text'),
    trailing: FaIcon(
      FontAwesomeIcons.arrowRight,
      color: AppTheme.of(context).text.inverse,
    ),
  );
>>>>>>> 65584a9 (try)
}
