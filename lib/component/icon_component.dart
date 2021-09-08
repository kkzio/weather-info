import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconComponent extends StatelessWidget {
  IconComponent(this.selectedIcon, this.sizeIcon, this.colorIcon);

  final IconData selectedIcon;
  final double sizeIcon;
  final Color colorIcon;

  @override
  Widget build(BuildContext context) {
    return FaIcon(
      selectedIcon,
      size: sizeIcon,
      color: colorIcon,
    );
  }
}
