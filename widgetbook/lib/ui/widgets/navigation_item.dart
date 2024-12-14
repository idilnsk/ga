<<<<<<< HEAD
import 'package:flutter/widgets.dart' hide Icon;

import 'icon.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({
    super.key,
    required this.isSelected,
    required this.iconUnselected,
    required this.iconSelected,
    required this.text,
  });

  final bool isSelected;
  final IconData iconUnselected;
  final IconData iconSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isSelected) Icon(iconSelected) else Icon(iconUnselected),
        Text(text),
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
  type: NavigationItem,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7395-4299&t=N6qwmLP7MP59ClWB-4',
)
Widget buildNavigationItemUseCase(BuildContext context) {
  return NavigationItem(
    isSelected: context.knobs.boolean(
      label: 'isSelected',
    ),
    iconSelected: FontAwesomeIcons.solidLemon,
    iconUnselected: FontAwesomeIcons.lemon,
    text: context.knobs.string(
      label: 'text',
      initialValue: 'Account',
    ),
  );
>>>>>>> 65584a9 (try)
}
