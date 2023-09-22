import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnvListTileWidget extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final ShapeBorder? shape;
  final ListTileStyle? style;
  final Color? selectedColor;
  final Color? iconColor;
  final Color? textColor;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final TextStyle? leadingAndTrailingTextStyle;
  final EdgeInsetsGeometry? contentPadding;
  final void Function()? onTap;
  final VisualDensity? visualDensity;
  final bool? selected;
  const EnvListTileWidget(
      {Key? key,
      this.leading,
      this.title,
      this.subtitle,
      this.trailing,
      this.shape,
      this.style,
      this.selectedColor,
      this.iconColor,
      this.textColor,
      this.titleTextStyle,
      this.subtitleTextStyle,
      this.leadingAndTrailingTextStyle,
      this.contentPadding,
      this.onTap,
      this.selected,
      this.visualDensity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        title: Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: title,
        ),
        titleTextStyle: titleTextStyle,
        subtitle: subtitle,
        subtitleTextStyle: subtitleTextStyle,
        trailing: trailing,
        leading: leading,
        leadingAndTrailingTextStyle: leadingAndTrailingTextStyle,
        onTap: onTap,
        shape: shape,
        textColor: textColor,
        iconColor: iconColor,
        selectedColor: selectedColor,
        selected: false,
        contentPadding: contentPadding,
        visualDensity: const VisualDensity(horizontal: 1, vertical: -4),
      ),
    );
  }
}
