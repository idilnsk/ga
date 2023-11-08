import 'package:flutter/widgets.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Badge,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=112-3469&mode=dev',
)
Widget badge(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(8),
    child: Badge(
      number: 9,
    ),
  );
}