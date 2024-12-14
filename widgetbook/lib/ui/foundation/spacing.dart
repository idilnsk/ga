import 'package:flutter/material.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

class SpacingWidget extends StatelessWidget {
  const SpacingWidget({
    super.key,
    required this.spacing,
    required this.name,
  });

  final double spacing;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(
              name,
            ),
          ),
          Container(
            height: 28,
            width: spacing,
            decoration: BoxDecoration(
              color: DesignSystemColor.brand.shade400,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text('${spacing.toStringAsFixed(0)}px'),
        ],
      ),
    );
  }
}

@UseCase(
  name: 'Default',
  type: DesignSystemSpacing,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7340-24767&t=uJW8KKcBrCOkO7C7-4',
)
Widget buildDesignSystemSpacingUseCase(BuildContext context) {
  return const SingleChildScrollView(
    child: Column(
      children: [
        SpacingWidget(
          name: 'none',
          spacing: DesignSystemSpacing.zero,
        ),
        SpacingWidget(
          name: 'xxs',
          spacing: DesignSystemSpacing.xxs,
        ),
        SpacingWidget(
          name: 'xs',
          spacing: DesignSystemSpacing.xs,
        ),
        SpacingWidget(
          name: 'small',
          spacing: DesignSystemSpacing.sm,
        ),
        SpacingWidget(
          name: 'medium',
          spacing: DesignSystemSpacing.m,
        ),
        SpacingWidget(
          name: 'large',
          spacing: DesignSystemSpacing.l,
        ),
        SpacingWidget(
          name: 'xl',
          spacing: DesignSystemSpacing.xl,
        ),
        SpacingWidget(
          name: 'xxl',
          spacing: DesignSystemSpacing.xxl,
        ),
      ],
    ),
  );
}
class DesignSystemSpacing {
  static const double zero = 0;
  static const double xxs = 4;
  static const double xs = 8;
  static const double sm = 12;
  static const double m = 16;
  static const double l = 24;
  static const double xl = 32;
  static const double xxl = 48;
  static const double xxxl = 64;
}
