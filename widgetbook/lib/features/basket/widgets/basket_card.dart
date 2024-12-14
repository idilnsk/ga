import 'package:flutter/widgets.dart';
<<<<<<< HEAD

import '../../../repositories/fruit.dart';
import '../../../ui/ui.dart';

class BasketCard extends StatelessWidget {
  const BasketCard({
    super.key,
    required this.fruit,
    required this.count,
    required this.onFruitAdded,
    required this.onFruitRemoved,
  });

  final Fruit fruit;
  final int count;
  final VoidCallback onFruitAdded;
  final VoidCallback onFruitRemoved;

  double get total => fruit.price * count;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppTheme.of(context).radius.sm),
              bottomLeft: Radius.circular(AppTheme.of(context).radius.sm),
            ),
            child: SizedBox(
              height: 72,
              width: 76,
              child: Image.network(
                fruit.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(AppTheme.of(context).spacing.xs),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          fruit.name,
                          style: AppTheme.of(context).typography.headingLarge,
                        ),
                        SizedBox(height: AppTheme.of(context).spacing.xxs),
                        Text(
                          '\$${fruit.price.toStringAsFixed(2)}',
                          style: AppTheme.of(context).typography.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Counter(
                    value: count,
                    onIncrement: onFruitAdded,
                    onDecrement: onFruitRemoved,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
=======
import 'package:groceries_app/features/features.dart';
import 'package:groceries_app/repositories/data_store.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: BasketCard,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=8808-4859&t=zUakLdAaKjMZAqSq-4',
)
Widget buildBasketCardUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: BasketCard(
      fruit: context.knobs.list(
        label: 'Fruit',
        options: DataStore.fruits,
        labelBuilder: (item) => item.name,
      ),
      count: context.knobs.int.input(
        label: 'Count',
      ),
      onFruitAdded: () {},
      onFruitRemoved: () => {},
    ),
  );
>>>>>>> 65584a9 (try)
}
