import 'package:flutter/widgets.dart';
<<<<<<< HEAD

import '../ui.dart';

class Divider extends StatelessWidget {
  const Divider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: AppTheme.of(context).border.color,
    );
  }
=======
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Divider,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7271-23241&t=N6qwmLP7MP59ClWB-4',
)
Widget buildDividerUseCase(BuildContext context) {
  return const Divider();
>>>>>>> 65584a9 (try)
}
