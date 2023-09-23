import 'package:flutter/material.dart';

class CustomSubHeader extends StatelessWidget {
  const CustomSubHeader({
    super.key,
    required this.theText,
  });

  final String theText;

  @override
  Widget build(BuildContext context) {
    return Text(theText,
        style: const TextStyle(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold));
  }
}
