// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:event_app/core/constants/env_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.evController,
    required this.theInputType,
    this.theMaxLines = 1,
    this.theHintText = '',
    this.theprefix,
    this.thesufix,
    this.theHeight,
  }) : super(key: key);

  final TextEditingController evController;
  final TextInputType theInputType;
  final int theMaxLines;
  final String theHintText;
  final Widget? theprefix;
  final Widget? thesufix;
  final double? theHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: theHeight,
      child: TextField(
        controller: evController,
        keyboardType: theInputType,
        maxLines: theMaxLines,
        decoration: InputDecoration(
          prefixIcon: theprefix,
          prefixIconColor: EnvColors.primaryColor,
          suffixIcon: thesufix,
          suffixIconColor: EnvColors.secondaryTextColor,
          hintText: theHintText,
          fillColor: Colors.grey.shade50,
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
              borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
