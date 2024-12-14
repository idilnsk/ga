<<<<<<< HEAD
import 'package:flutter/widgets.dart';

import '../ui.dart';

class PageShell extends StatelessWidget {
  const PageShell({super.key, required this.child, this.header});

  final Widget child;
  final String? header;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppBar(
          title: 'Groceries App',
        ),
        const Divider(),
        if (header != null)
          Padding(
            padding: EdgeInsets.all(AppTheme.of(context).spacing.sm),
            child: Text(
              header!,
              style: AppTheme.of(context).typography.headingLarge,
            ),
          ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(
              theme.spacing.sm,
            ),
            child: child,
          ),
        ),
        const Divider(),
        const BottomNavigationBar(),
      ],
    );
  }
=======
import 'package:flutter/material.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import '../../features/utility/placeholder.dart' as util;

@UseCase(
  name: 'Default',
  type: PageShell,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6802-3379&t=N6qwmLP7MP59ClWB-4',
)
Widget buildPageShellUseCase(BuildContext context) {
  return PageShell(
    header: context.knobs.string(label: 'header', initialValue: 'Header'),
    child: const util.Placeholder(),
  );
>>>>>>> 65584a9 (try)
}
