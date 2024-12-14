import 'package:flutter/widgets.dart';
<<<<<<< HEAD

import '../../../l10n/app_localizations.dart';
import '../../../ui/ui.dart';
import 'cost_item_row.dart';

class Summary extends StatelessWidget {
  const Summary({
    super.key,
    required this.subTotal,
    required this.delivery,
  });

  final double subTotal;
  final double delivery;

  double get total => subTotal + delivery;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(),
        SizedBox(
          height: AppTheme.of(context).spacing.xxs,
        ),
        CostItemRow(
          label: AppLocalizations.of(context)!.basketSubtotal,
          cost: subTotal,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.xxs,
        ),
        CostItemRow(
          label: AppLocalizations.of(context)!.basketDelivery,
          cost: delivery,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.xxs,
        ),
        CostItemRow(
          label: AppLocalizations.of(context)!.basketTotal,
          cost: total,
        ),
      ],
    );
  }
=======
import 'package:groceries_app/features/features.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Summary,
)
Widget buildSummaryUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Summary(
      subTotal:
          context.knobs.double.slider(label: 'subTotal', initialValue: 10),
      delivery: context.knobs.double.slider(label: 'delivery', initialValue: 5),
    ),
  );
>>>>>>> 65584a9 (try)
}
