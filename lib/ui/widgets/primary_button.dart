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
        vertical: AppTheme.of(context).spacing.md,
        horizontal: AppTheme.of(context).spacing.xl,
      ),
      decoration: BoxDecoration(
        color: AppTheme.of(context).background.brand,

        borderRadius: BorderRadius.circular(0),
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
}