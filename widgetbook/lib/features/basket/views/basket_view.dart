import 'package:flutter/widgets.dart';
<<<<<<< HEAD
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../l10n/app_localizations.dart';
import '../../../repositories/fruit.dart';
import '../../../ui/ui.dart';
import '../basket.dart';

class BasketView extends StatelessWidget {
  const BasketView({
    super.key,
    required this.basket,
    required this.delivery,
    required this.subTotal,
  });

  final Map<Fruit, ProductOrder> basket;
  final double delivery;
  final double subTotal;

  Widget _buildFilledPage(BuildContext context) {
    return ListView.separated(
      key: ValueKey(basket),
      itemCount: basket.length,
      separatorBuilder: (context, index) {
        return SizedBox(
          height: AppTheme.of(context).spacing.m,
        );
      },
      itemBuilder: (context, index) {
        final fruit = basket.keys.elementAt(index);
        return BasketCard(
          fruit: fruit,
          count: basket[fruit]!.quantity,
          onFruitAdded: () => BasketState.of(context).addFruit(fruit),
          onFruitRemoved: () => BasketState.of(context).removeFruit(fruit),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return basket.isEmpty
        ? PageShell(
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: EmptyState(
                      icon: FontAwesomeIcons.basketShopping,
                      title: AppLocalizations.of(context)!.basketEmpty,
                      message: AppLocalizations.of(context)!.basketEmptyMessage,
                    ),
                  ),
                ),
                PrimaryButton(
                  content: AppLocalizations.of(context)!.startShopping,
                ),
              ],
            ),
          )
        : PageShell(
            header: AppLocalizations.of(context)!.basketHeadline,
            child: Column(
              children: [
                Expanded(child: _buildFilledPage(context)),
                Summary(
                  subTotal: subTotal,
                  delivery: delivery,
                ),
                SizedBox(
                  height: AppTheme.of(context).spacing.xs,
                ),
                PrimaryButton(
                  content:
                      AppLocalizations.of(context)!.basketContinueToShipping,
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
  name: 'Empty',
  type: BasketView,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6809-5986&t=zUakLdAaKjMZAqSq-4',
)
Widget buildBasketViewEmptyUseCase(BuildContext context) {
  return const BasketView(
    basket: {},
    delivery: 0,
    subTotal: 0,
  );
}

@UseCase(
  name: 'Non-empty',
  type: BasketView,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6809-5504&t=zUakLdAaKjMZAqSq-4',
)
Widget buildBasketViewUseCase(BuildContext context) {
  final fruit_1 = DataStore.fruits[0];
  final fruit_2 = DataStore.fruits[1];

  return BasketScope(
    state: BasketState(
      data: {
        fruit_1: ProductOrder(
          fruit: fruit_1,
          quantity: context.knobs.int.input(
            label: '${fruit_1.name} Quantity',
            initialValue: 1,
          ),
        ),
        fruit_2: ProductOrder(
          fruit: fruit_2,
          quantity: context.knobs.int.input(
            label: '${fruit_2.name} Quantity',
            initialValue: 2,
          ),
        ),
      },
    ),
    child: Builder(
      builder: (context) {
        final basketState = BasketState.of(context);

        return BasketView(
          basket: basketState.store,
          delivery: basketState.delivery,
          subTotal: basketState.subTotal,
        );
      },
    ),
  );
>>>>>>> 65584a9 (try)
}
