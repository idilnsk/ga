import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: IconButton,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7337-3250&t=N6qwmLP7MP59ClWB-4',
)
Widget buildIconButtonUseCase(BuildContext context) {
  return IconButton(
    icon: FontAwesomeIcons.user,
    onPressed: () {},
  );
}
import 'package:flutter/widgets.dart' hide Icon;

import '../ui.dart';

class IconButton extends StatefulWidget {
  const IconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  IconButtonState createState() => IconButtonState();
}

class IconButtonState extends State<IconButton> {
  double _scale = 1;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scale = 0.9; // Shrinks the icon slightly
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _scale = 1.0; // Restores the icon size
    });
  }

  void _onTapCancel() {
    setState(() {
      _scale = 1.0; // Restores the icon size if the tap is canceled
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        child: Icon(widget.icon),
      ),
    );
  }
}
