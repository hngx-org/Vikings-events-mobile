import 'dart:io';

import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/core/extensions/num_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final double? textSize;

  final double? verticalPadding;
  final double? horizontalPadding;
  final Color? containerColor;
  final Color? textColor;
  final bool? isLoading;
  final void Function()? onPressed;

  const CustomButton({
    required this.buttonText,
    this.verticalPadding,
    this.horizontalPadding,
    this.isLoading = false,
    this.textSize,
    this.containerColor,
    this.textColor,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horizontalPadding,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.1,
          backgroundColor: containerColor ?? EnvColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding ?? 16,
          ),
          child: Center(
            child: !isLoading!
                ? Text(
                    buttonText,
                    style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontSize: textSize ?? 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Loading',
                        style: TextStyle(
                          color: textColor ?? Colors.white,
                          fontSize: textSize ?? 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      10.wi,
                      const AppProgressIndicator(),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

class AppProgressIndicator extends StatelessWidget {
  final Color? color;
  const AppProgressIndicator({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation(
              color ?? Colors.white,
            ),
          )
        : CupertinoActivityIndicator(
            color: color ?? Colors.white,
          );
  }
}
