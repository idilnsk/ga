<<<<<<< HEAD
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ui.dart';

class Icon extends StatelessWidget {
  const Icon(
    this.icon, {
    super.key,
    this.scale = 1,
  });

  final IconData icon;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppTheme.of(context).spacing.xs),
      child: FaIcon(
        icon,
        size: 20 * scale,
        color: AppTheme.of(context).text.primary,
      ),
    );
  }
=======
import 'package:flutter/widgets.dart' hide Icon;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Icon,
)
Widget buildIconUseCase(BuildContext context) {
  return const Icon(
    FontAwesomeIcons.user,
  );
>>>>>>> 65584a9 (try)
}
