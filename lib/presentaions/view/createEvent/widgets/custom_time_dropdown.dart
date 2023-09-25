import 'package:flutter/material.dart';

class DropDownTimePicker extends StatefulWidget {
  const DropDownTimePicker({super.key});

  @override
  State<DropDownTimePicker> createState() => _DropDownTimePickerState();
}

class _DropDownTimePickerState extends State<DropDownTimePicker> {
  int selectedTime = 7;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: selectedTime,
      items: List.generate(24, (index) => index)
          .map<DropdownMenuItem<int>>((int value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text(
            '${value == 0 ? '${value}0' : value}:00',
            style: const TextStyle(fontSize: 16),
          ),
        );
      }).toList(),
      onChanged: (int? newValue) {
        setState(() {
          selectedTime = newValue!;
        });
      },
    );
  }
}
