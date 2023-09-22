// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EnvIconButtonWidget extends StatelessWidget {
  final void Function() onPressed;
  final Widget icon;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final Color? color;
  final Color? focusColor;
  final Color? highlightColor;
  final ButtonStyle? style;
  final Widget? selectedIcon;
  const EnvIconButtonWidget({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.iconSize,
    this.alignment,
    this.color,
    this.focusColor,
    this.highlightColor,
    this.padding,
    this.selectedIcon,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      iconSize: iconSize,
      alignment: alignment,
      color: color,
      focusColor: focusColor,
      highlightColor: highlightColor,
      selectedIcon: selectedIcon,
      padding: padding,
      style: style,
    );
  }
}
