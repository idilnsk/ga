<<<<<<< HEAD
import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class CostItemRow extends StatelessWidget {
  const CostItemRow({
    super.key,
    required this.label,
    required this.cost,
  });

  final String label;
  final double cost;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTheme.of(context).typography.subheadingSmall,
        ),
        Text(
          '\$${cost.toStringAsFixed(2)}',
          style: AppTheme.of(context).typography.subheadingSmall,
        ),
      ],
    );
  }
=======
import 'package:flutter/widgets.dart';
import 'package:groceries_app/features/features.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: CostItemRow,
)
Widget buildAppBarUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: CostItemRow(
      label: context.knobs.string(
        label: 'label',
        initialValue: 'Delivery',
      ),
      cost: context.knobs.double.slider(
        label: 'Cost',
        initialValue: 5,
        max: 10000,
        divisions: 100,
      ),
    ),
  );
>>>>>>> 65584a9 (try)
}
