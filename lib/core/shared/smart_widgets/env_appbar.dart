import 'package:flutter/material.dart';

class EnvAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EnvAppBar(
      {super.key,
      this.title,
      this.leading,
      this.style,
      this.leadingWidth,
      this.elevation,
      this.actions,
      this.centerTitle});
  final String? title;
  final Widget? leading;
  final TextStyle? style;
  final double? leadingWidth;
  final double? elevation;
  final List<Widget>? actions;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title ?? '',
        style: style,
      ),
      leading: leading,
      leadingWidth: leadingWidth,
      elevation: elevation ?? 0,
      centerTitle: centerTitle,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
